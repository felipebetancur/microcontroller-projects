#include "main.h"

// 5 degrees minimum command for yaw
#define MIN_COMMAND 0.0872664626

int main(){

	uint64_t millis = 0;
	uint8_t armed = 0x00;
	uint64_t last_telemetry = 0;
	vector_t sp = { 0,0,0 };		// ATTITUDE set point
	double motor[4];				// MOTOR set point
//	double heading;					// heading hold
	uint8_t throttle_back;
	
	//Init all modules.  We call accel_init last as it forces sei().
	status_init();
	comm_init();
	timer_init();
	gyro_init();
	accel_init();  //sei() is called in accel_init(), as it is needed for i2c.
	
	pid_init();
	attitude_init(gyro_get(), accel_get());	   
	
	//Main program loop
	while (1) {
		uint64_t curr_millis = timer_millis();
		uint64_t dt =+ (curr_millis - millis);
		millis = curr_millis;

		protocol_poll();
		
		double flight_command[4];
		uint8_t cmd_type = protocol_receive_flight_command(flight_command);
		if (cmd_type == 'A' || cmd_type == 'M') {
			armed = cmd_type;
			dt = 0;
		}

		vector_t g = gyro_get();
		vector_t a = accel_get();
		vector_t pv = attitude(g, a);				// PID process variable

		if (armed == 'A') {							// armed by attitude command
			status_set(STATUS_ARMED);
			
			double throttle = flight_command[0];
			sp.x = flight_command[1];
			sp.y = flight_command[2];
			sp.z = flight_command[3];
			if (dt > 3000) {
				status_clear(STATUS_ARMED);
				
				// level out 
				sp.x = 0;
				sp.y = 0;
				sp.y = 0;
				
				throttle_back += dt;
				
				// NOTE: this will go from full throttle to off in about two minutes
				if (throttle_back >= 500) {
					// scale back throttle
					throttle_back = 0;
					throttle--;
				}
			}
			
			// if (sp.z > MIN_COMMAND || sp.z < -MIN_COMMAND) {
				// yaw setpoint exceeds minimum threshold
				//heading = pv.z;	// remember the last heading so it can be used when the command drops below threshold
				pv.z = g.z;		// for z do pid directly on the gyro reading
				// do PID as normal
			} else {
				// TODO implement heading hold, requires implementing PID for heading
				// no yaw setpoint, apply a heading hold
				// use PID to compute a new heading based on the saved heading and the heading reported by the attitude (pv)
		// 		double hold = _pid_mv(heading, pv.z, &state_heading);
		// 		mv.z = _pid_mv(hold, pv.z, &state_z);
				// pv.z = 0;
				// sp.z = 0;
			}
			vector_t mv = pid_mv(sp, pv);			// PID manipulated variable
			
			motor_percent(throttle, mv, motor);
			esc_set(motor);
		} else if (armed == 'M') {					// armed by motor command
			status_set(STATUS_ARMED);
			for (uint8_t i = 0; i < 4; i++) {
				motor[i] = flight_command[i];
			}
			
			if (dt > 3000) {
				status_clear(STATUS_ARMED);

				// kill the motors completely
				for (uint8_t i = 0; i < 4; i++) {
					motor[i] = 0;
				}
			}
			pid_reset();							// since pid isn't used for motor commands, take this opportunity to clear any accumulated error
			esc_set(motor);
		}

		if (curr_millis - last_telemetry > 75){
			status_toggle(STATUS_HEARTBEAT);

			protocol_send_telemetry(pv, motor);
			protocol_send_raw(g, a);
			last_telemetry = curr_millis;
		}
	}
}

