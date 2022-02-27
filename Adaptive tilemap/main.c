#include <stdio.h>
#include <gb/gb.h>
#include <gb/metasprites.h>

#include "square.h"

#include "bktiles.c"
#include "testmap.c"

#define GRAV 1
#define WDT 2
#define HGT 5

int printcounter = 0;

UINT8 pX, pY, xLast, yLast;
INT8 xSpeed = 0, ySpeed = 0;
UINT8 ground_coll = 1, ceiling_coll = 0;
UINT8 x_values[WDT];
UINT8 y_values[HGT];
UINT8 xLast_values[WDT];
UINT8 yLast_values[HGT];


void moveplayer(void);
void basicmove(void);
int collision(void);

void main(void)
{
    SHOW_SPRITES;
    DISPLAY_ON;
    SHOW_BKG;
    set_sprite_data(0, sizeof(square_data) >> 4, square_data);
    set_bkg_data(0, 5, bktiles);
    set_bkg_submap(0, 0, 20, 18, testmap, 20);
    pX = 40; pY = 80;
    xLast = pX; yLast = pY;
    moveplayer();
    while(1)
    {
        basicmove();       
        collision();
        xLast = pX;
        yLast = pY;
        moveplayer();
        delay(30);
    }
}

void moveplayer(void)
{
    move_metasprite(square_metasprites[0], 0, 0, xLast, yLast);
}

void basicmove(void)
{
    if(joypad() & J_A && ground_coll == 1 && ceiling_coll == 0)
    {
        //-8 - 3
        ySpeed = -9;
        ground_coll = 0;
    }

    if(joypad() & J_RIGHT)
    {
        pX += 2;
    }
    else if(joypad() & J_LEFT)
    {
        pX -= 2;
    }

    if(joypad() & J_DOWN)
    {
        pY += 2;
    }
    else if(joypad() & J_UP)
    {
        pY -= 2;
    }

    if(ceiling_coll == 1)
    {
        ySpeed = 0;
        ceiling_coll = 0;
    }
    //I have disabled gravity, reenable it by deleting "&& 0"
    if(ground_coll == 0 && 0)
    {
        if(ySpeed < 7)
        {
            ySpeed += 2;
        }
        pY += ySpeed;
    }
    else
    {
        ySpeed = 0;
        ground_coll = 0;
    }   
}

int collision(void)
{
    for(int i = 0; i < WDT; i++)
    {
        if(i == 0)
        {
            x_values[i] = (pX - 16 + i*8 + 1) >> 3;
            xLast_values[i] = (xLast - 16 + i*8 + 1) >> 3;
        }
        else if(i == WDT - 1)
        {
            x_values[i] = (pX - 16 + i*8 - 1) >> 3;
            xLast_values[i] = (xLast - 16 + i*8 - 1) >> 3;
        }
        else
        {
            x_values[i] = (pX - 16 + i*8) >> 3;
            xLast_values[i] = (xLast - 16 + i*8) >> 3;
        }        
    }
    for(int i = 0; i < HGT; i++)
    {
        if(i == 0)
        {
            y_values[i] = (pY - 24 + i*8 + 1) >> 3;
            yLast_values[i] = (yLast - 24 + i*8 + 1) >>3;
        }
        else if(i == HGT - 1)
        {
            y_values[i] = (pY - 24 + i*8 - 1) >> 3;
            yLast_values[i] = (yLast - 24 + i*8 - 1) >>3;
        }
        else
        {
            y_values[i] = (pY - 24 + i*8) >> 3;
            yLast_values[i] = (yLast - 24 + i*8) >>3;
        }        
    }
        
    for(int i = 0; i < HGT; i++)
    {
        for(int c = 0; c < WDT; c++)
        {
            if(testmap[(y_values[i])*20 + x_values[c]] == 3)
            {
                if(testmap[(yLast_values[i])*20 + x_values[c]] == 3)
                {
                    //change X
                    if(c == 0)
                    {
                        pX = (x_values[c] << 3) + 24;
                    }
                    else if(c == WDT - 1)
                    {
                        pX = (x_values[c] << 3) - (WDT - 3)*8;
                    }
                }
                if(testmap[(y_values[i])*20 + xLast_values[c]] == 3)
                {
                    //change Y
                    if(i == 0)
                    {
                        pY = (y_values[i] << 3) + 32;
                        ceiling_coll = 1;
                    }
                    else if(i = HGT - 1)
                    {
                        pY = (y_values[i] << 3) + 8 - (HGT - 3)*8;
                        ground_coll = 1;
                    }
                    
                }
            }
        //Skips the inner parts    
            if(i != 0 && i != HGT - 1)
            {
                c = WDT - 1;
            }
        }
    }    
    return 1;
}