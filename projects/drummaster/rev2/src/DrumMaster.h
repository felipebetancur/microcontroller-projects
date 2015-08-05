#ifndef DRUMMASTER_H
#define DRUMMASTER_H

#include <ADC.h>
#include <SD.h>
#include <SerialFlash.h>
#include <SPI.h>

#include "Samples.h"
#include "MenuState.h"

#include "menu/MainMenu.h"
#include "menu/MainVolume.h"
#include "menu/LoadSamples.h"



#define MOSI							7
#define MISO							12
#define SCK								14
#define CS_FLASH						6
#define CS_SD							10

#endif