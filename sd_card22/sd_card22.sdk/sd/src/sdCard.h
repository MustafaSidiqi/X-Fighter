/*
 * sdCard.h
 *
 *  Created on: Jan 5, 2017
 *      Author: simon
 */

#ifndef SDCARD_H_
#define SDCARD_H_

#include "xparameters.h"	/* SDK generated parameters */
#include "xsdps.h"		    /* SD device driver */
#include "ff.h"
#include "xil_cache.h"
#include "xil_printf.h"


int sd_initialize();
int sd_readFile(const char* fileName, u8* destAddress, UINT bytesToRead, UINT* bytesRead);




#endif /* SDCARD_H_ */
