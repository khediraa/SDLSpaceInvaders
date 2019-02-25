#include "background.h"
#include <math.h>   // för fmod()

extern const Uint8 *state;

GameObject background;

void updateBackground(GameObject* this)
{
    this->angle = fmod(this->angle+0.02, 360);
    this->scale += 1.0/2500.0;

    if (state[SDL_SCANCODE_W])
        this->scale = this->scale + this->scaleSpeed;           
    if (state[SDL_SCANCODE_S])
        this->scale = (this->scale - this->scaleSpeed <= 0) ? 0 : 
                            this->scale - this->scaleSpeed;    
}

void createBackground()
{
    background.gfxObj = createGfxObject(  "../background.jpg" );
    background.gfxObj.outputWidth  = 800;
    background.gfxObj.outputHeight = 600; 
    background.pos.x = 400.0f;
    background.pos.y = 300.0f;
    background.speed = 0;         // unused
    background.angle = 0;  
    //(Note: 1/100 are integer numbers and division becomes equal to 0)
    background.scale = 1.8f;
    background.scaleSpeed = 1.0/100.0; 
    background.frame = 0;
    background.frameSpeed = 1;
    background.numFrames = 1;
    background.update = updateBackground;
    background.render = render;

   gameObjects[nGameObjects++] = &background;    
}