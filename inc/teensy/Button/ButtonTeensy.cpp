#include "ButtonTeensy.h"

using namespace digitalcave;

ButtonTeensy::ButtonTeensy(uint8_t pin, uint16_t pressTime, uint16_t releaseTime, uint16_t longPressTime, uint16_t repeatPressTime){
	init(pressTime, releaseTime, longPressTime, repeatPressTime);
	pinMode(pin, INPUT_PULLUP);	
}

uint8_t ButtonTeensy::read(){
	return digitalReadFast(pin);
}
