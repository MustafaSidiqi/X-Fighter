/*
 * sdCard.c
 *
 *  Created on: Jan 5, 2017
 *      Author: simon
 */

#include "sdCard.h"


static FIL fil;		/* File object */
static FATFS fatfs;
static char _SD_File[50];
static char* SD_File = _SD_File;
static FRESULT Res;
static UINT NumBytesRead;
static UINT NumBytesWritten;
static TCHAR *Path = "0:/";

int sd_initialize()
{
	/*
	 * Register volume work area, initialize device
	 */
	Res = f_mount(&fatfs, Path, 0);
		if (Res != FR_OK) {
		return XST_FAILURE;
	}

	return Res;
}

int sd_readFile(const char* fileName, u8* destAddress, UINT bytesToRead, UINT* bytesRead)
{
	SD_File = (char*)fileName;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res) {
		return XST_FAILURE;
	}

	/*
	 * Pointer to beginning of file .
	 */
	Res = f_lseek(&fil, 0);
	if (Res) {
	return XST_FAILURE;
	}

	/*
	 * Read data from file.
	 */
	Res = f_read(&fil, (void*)destAddress, bytesToRead, bytesRead);
	if (Res) {
		return XST_FAILURE;
	}

	/*
	 * Close file.
	 */
	Res = f_close(&fil);
	if (Res) {
		return XST_FAILURE;
	}

	return Res;
}
