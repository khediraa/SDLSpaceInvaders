#include "gameobject.h"
#include "renderer.h"

GameObject* gameObjects[100];
int nGameObjects = 0;

/*
void render(GameObject* this)
{
    renderGfxObject(&this->gfxObj, this->pos.x, this->pos.y, this->angle, this->scale);    
}
*/ 

void render(GameObject* this)
{
     // Render a sub frame to screen
    // Here, we know that the heart image is a sprite sheet with 10 frames
    // simply outlined next to each other in the x-direction.
    // Thus, the x-coordinate for the current frame is easy to compute:
    int w = this->gfxObj.textureWidth / this->numFrames;
    int x = w * (int)(this->frame);

    SDL_Rect srcRect = { x, 0, w, this->gfxObj.textureHeight }; // select the frame image
    
    renderGfxSubFrame(&this->gfxObj, this->pos.x, this->pos.y, this->angle, this->scale, srcRect );       

}



