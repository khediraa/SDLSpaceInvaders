#include "player.h"
#include <math.h>   // för fmod()

extern const Uint8 *state;

GameObject ship;

void shake(vec2f* pos);
void updateShip(GameObject* this)
{
	shake(&this->pos);
    if (state[SDL_SCANCODE_RIGHT])
        this->pos.x = (this->pos.x+this->speed >= 799) ? 799 : this->pos.x+this->speed;
    if (state[SDL_SCANCODE_LEFT])
        this->pos.x = (this->pos.x-this->speed <= 0) ? 0 : this->pos.x-this->speed; 
    if (state[SDL_SCANCODE_DOWN])
        this->pos.y = (this->pos.y+this->speed >= 599) ? 599 : this->pos.y+this->speed;           
    if (state[SDL_SCANCODE_UP])
        this->pos.y = (this->pos.y-this->speed <= 0) ? 0 : this->pos.y-this->speed;

    if (state[SDL_SCANCODE_A])
        this->angle = fmod(this->angle - this->angleSpeed, 360.0);           
    if (state[SDL_SCANCODE_D])
        this->angle = fmod(this->angle + this->angleSpeed, 360.0);    
}

void createShip()
{
    ship.gfxObj = createGfxObject(  "../ship.png" );
    ship.gfxObj.outputWidth  = 200;
    ship.gfxObj.outputHeight = 200;
    ship.pos.x = 400.0f;
    ship.pos.y = 300.0f;
    ship.speed = 3;
    //(Note: 90/360, without .0, are integer numbers and division then becomes equal to 0)
    ship.angle = 0;               // unused
    ship.angleSpeed = 90.0/360.0; // unused
    ship.scale = 1.0f;
    ship.scaleSpeed = 0;          // unused
    ship.frame = 0;
    ship.frameSpeed = 1;
    ship.numFrames = 1;    
    ship.update = updateShip;
    ship.render = render;   
    
    gameObjects[nGameObjects++] = &ship;
}

int t = 0;
bool bShake = false;
int shakeStop = 0;
void shake(vec2f* pos)
{
    // om bShake == false, initiera shake med sannolikhet 1/60.
    //      Sätt bShake = true;
    //      Sätt shakeStop till t + (30 till 50) frames
    // om (bShake && t < shakeStop)
    //      addera omväxlande -1 resp 1 varannan frame till x,y
    // om (bShake && t >= shakeStop)
    //      sätt bShake = false;
    
    if( bShake == false && ((rand() % 60)==1) ) {
        bShake = true;
        shakeStop = t + (rand() % 20) + 30;
    }
    if( bShake && t < shakeStop) {
        pos->x += 2*((t % 3) - 1); 
        pos->y += ((rand() % 3) - 1); 
    }
    if( bShake && (t >= shakeStop) ) {
        bShake = false;
    }
    t++;
}