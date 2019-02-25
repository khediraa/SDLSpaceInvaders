#ifndef GAMEOBJECT_H
#define GAMEOBJECT_H

#include "renderer.h"
#include "vecmath.h"

typedef struct tGameObject{
    GfxObject   gfxObj;
    vec2f       pos;
    vec2f       moveDir;    // move direction
    float       speed;
    double      angle, angleSpeed;
    float       scale, scaleSpeed;

	// new members for animated images:
    float       frame;
    float       frameSpeed;
    int         numFrames;

    // methods:
    void        (*update) (struct tGameObject* gameobj);
    void        (*render) (struct tGameObject* gameobj);
} GameObject;

void render(GameObject* this); // metod

extern GameObject* gameObjects[];
extern int nGameObjects;

#endif // GAMEOBJECT_H