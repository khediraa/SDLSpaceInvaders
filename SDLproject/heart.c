#include "heart.h"
#include "gameobject.h"
#include <math.h>   // för fmod()

GameObject heart[100];

static void update(GameObject* this)
{
    // update which frame in texture to show
    this->frame = fmod( (this->frame+this->frameSpeed), this->numFrames );   
    
    // update positions
    static int iter = 0; 
    int duration = 200;
    float ampl = 100.0f, t;

    iter++;
    
    // this frame
    int frame = iter + (this->pos.x) / 3.5f;
    t = (frame % duration) / (float)(duration-1); // t: 0 -> duration
    float current_y = ampl*( fabs(2.0f*(3*t*t - 2*t*t*t) -1)); // snott fr. uppg.3 v1.
    
    // previous frame
    t = ((frame-1) % duration) / (float)(duration-1); 
    float previous_y = ampl*( fabs(2.0f*(3*t*t - 2*t*t*t) -1)); 
    
    // Compute delta step in y-direction
    float delta_y = current_y - previous_y;
    
    this->pos.y += delta_y;
}

static void init(GameObject* pObj, GfxObject* pGfx, vec2f pos, float startFrame)
{
    pObj->gfxObj = *pGfx;
    pObj->gfxObj.outputWidth  = 100;
    pObj->gfxObj.outputHeight = 100;
    pObj->pos = pos;
    pObj->moveDir = (vec2f){0,0};  // unused
    pObj->speed = 0;
    pObj->angle = 0;               // unused
    pObj->angleSpeed = 0;          // unused
    pObj->scale = 1.0f;
    pObj->scaleSpeed = 0;          // unused
    pObj->update = update;         // our own update in this file
    pObj->render = render;         // From gameobjects.h
    pObj->frame = startFrame;
    pObj->frameSpeed = 0.5f;
    pObj->numFrames = 10;
	pObj->age = 0;
	pObj->lifeTime = 1000;
}

void createHearts()
{
    static GfxObject gfx;
    static bool bFirstTime = true;
    
    // It is unnecesary to load the heart image for every instance. Just do it once:
    if(bFirstTime)
    {
        bFirstTime = false;
        // Create a GfxObject for the heart image
        gfx = createGfxObject(  "../fireheart_new.png" );
    }
        
    init(&heart[0], &gfx, (vec2f){100, 100}, 0);
    init(&heart[1], &gfx, (vec2f){200, 100}, 3);
    init(&heart[2], &gfx, (vec2f){300, 100}, 6);
    gameObjects[nGameObjects++] = &heart[0];
    gameObjects[nGameObjects++] = &heart[1];
    gameObjects[nGameObjects++] = &heart[2];
}

