/*
Copyright 2012 Jun Wako <wakojun@gmail.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/


#pragma once


#define USE_SERIAL

#define MASTER_LEFT
//#define MASTER_RIGHT
//#define EE_HANDS
// Rows are doubled-up

/* Encoder support */
#define ENCODERS_PAD_A { F5 }
#define ENCODERS_PAD_B { F4 }
#define ENCODERS_PAD_A_RIGHT { F4 }
#define ENCODERS_PAD_B_RIGHT { F5 }
#define ENCODER_RESOLUTION 2
#define ENCODER_DIRECTION_FLIP

// Underglow
#define RGB_DI_PIN D1
#define RGBLED_NUM 18    // Number of LEDs
#define RGBLED_SPLIT { 9, 9 }
#define RGBLIGHT_SLEEP
#define RGBLIGHT_LIMIT_VAL 150
#define RGBLIGHT_ANIMATIONS
#define RGBLIGHT_DEFAULT_MODE RGBLIGHT_MODE_RAINBOW_MOOD

