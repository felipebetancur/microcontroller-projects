#ifndef TIMER_H
#define TIMER_H

#include <avr/io.h>
#include <avr/interrupt.h>

/*
 * Initializes the timer, and resets the timer count to 0.  Sets up the ISRs 
 * linked with timer1.
 */
void timer_init();

/*
 * Gets the tuning value for the timer compare value.
 */
int16_t timer_get_tune();
void timer_set_tune(int16_t millis);

/*
 * Gets the number of seconsd since epoch.
 */
uint32_t timer_get_seconds();

/*
 * Gets the number of millis since the second (0 - 999)
 */
uint16_t timer_get_millis();

void timer_set(uint32_t seconds, uint16_t millis);

#endif
