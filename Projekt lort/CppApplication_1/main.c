/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: Simon
 *
 * Created on 10. januar 2017, 14:23

*/
#include <stdio.h>
#include <stdlib.h>
#include "PPM.h"


int main(void) {
    PPMImage *image;
    image = readPPM("game_over.ppm");
    int i=0;
    for(i=0;i < 4800;i++){
        printf("%u,",image->data[i].red);
        printf("%u,",image->data[i].blue);
        printf("%u,",image->data[i].green);
    }
  

    return (0);
}
 


