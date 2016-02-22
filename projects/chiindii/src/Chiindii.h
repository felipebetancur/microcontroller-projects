#ifndef CHIINDII_H
#define CHIINDII_H

//Comment this out to remove debugging output on USB serial
#define DEBUG

//Pick one IMU
#define IMU_MADGWICK
//#define IMU_COMPLEMENTARY

#include <util/delay.h>
#include <avr/io.h>

#include <dcmath.h>
#include <dctypes.h>
#include <FramedSerialProtocol.h>
#include <SerialAVR.h>
#include <PID.h>

#include "lib/Mpu6050/Mpu6050.h"

#include "Status.h"
#include "controllers/General.h"
#include "controllers/UniversalController.h"
#include "controllers/Calibration.h"
#include "controllers/Direct.h"

#if defined IMU_MADGWICK
#include "imu/Madgwick.h"
#elif defined IMU_COMPLEMENTARY
#include "imu/Complementary.h"
#endif

#ifdef DEBUG
#include <SerialUSB.h>
#include <stdio.h>
#endif

#define MOTOR1_PORT		PORTE
#define MOTOR1_PIN		PORTE6
#define MOTOR2_PORT		PORTC
#define MOTOR2_PIN		PORTC7
#define MOTOR3_PORT		PORTD
#define MOTOR3_PIN		PORTD5
#define MOTOR4_PORT		PORTB
#define MOTOR4_PIN		PORTB7

#define MODE_UNARMED		0x00
#define MODE_ARMED_ANGLE	0x01
#define MODE_ARMED_RATE		0x02
#define MODE_ARMED_THROTTLE	0x03
#define MODE_SHOW_VARIABLES 0x04

#define CONTROLLER_NONE			0x00
#define CONTROLLER_UC			0x01
#define CONTROLLER_DIRECT		0x02
#define CONTROLLER_CALIBRATION	0x03

//Disable the WDT on startup.  See http://www.atmel.com/webdoc/AVRLibcReferenceManual/FAQ_1faq_softreset.html
void wdt_init(void) __attribute__((naked)) __attribute__((section(".init3")));


namespace digitalcave {
	class Chiindii {
			
		private:
			uint8_t mode;
			uint8_t debug;
			uint8_t battery_level;
			double throttle_sp;
			vector_t angle_sp;
			vector_t rate_sp;
			
			FramedSerialProtocol protocol;
			Mpu6050 mpu6050;

			PID rate_x;
			PID rate_y;
			PID rate_z;
			PID angle_x;
			PID angle_y;
			PID gforce;

#if defined IMU_MADGWICK
			Madgwick madgwick;
#elif defined IMU_COMPLEMENTARY
			Complementary c_x;
			Complementary c_y;
#endif
		
			General general;
			Calibration calibration;
			Direct direct;
			UniversalController uc;
			
			Status status;
			
			void driveMotors(double throttle, vector_t* rate_pv);
			void dispatch(FramedSerialMessage *message);
			
		public:
			Chiindii();

			void run();
			
			vector_t* getAngleSp();
			vector_t* getRateSp();
			double getThrottle();
			void setThrottle(double throttle);

			PID* getRateX();
			PID* getRateY();
			PID* getRateZ();
			PID* getAngleX();
			PID* getAngleY();
			PID* getGforce();

#if defined IMU_MADGWICK
			Madgwick* getMadgwick();
#elif defined IMU_COMPLEMENTARY
			Complementary* getCompX();
			Complementary* getCompY();
#endif
			Mpu6050* getMpu6050();
			Status* getStatus();

			uint8_t getBatteryLevel();
			uint8_t getBatteryPercent();
			
			uint8_t getMode();
			void setMode(uint8_t mode);
			
			uint8_t getDebug();
			void setDebug(uint8_t debug);
			void sendDebug(char* message);
			void sendDebug(const char* message);
			void sendUsb(char* message);
			void sendUsb(const char* message);


			void sendMessage(FramedSerialMessage* message);
	};
}
#endif
