// Alloy Physical Shader Framework
// Copyright 2013-2017 RUST LLC.
// http://www.alloy.rustltd.com/

/////////////////////////////////////////////////////////////////////////////////
/// @file OrientedBlend.cginc
/// @brief Oriented Blend shader definition.
/////////////////////////////////////////////////////////////////////////////////

#ifndef ALLOY_SHADERS_DEFINITION_ORIENTED_BLEND_CGINC
#define ALLOY_SHADERS_DEFINITION_ORIENTED_BLEND_CGINC

#define A_MAIN_TEXTURES_ON
#define A_MAIN_TEXTURES_CUTOUT_OFF
#define A_DIRECTIONAL_BLEND_ON
#define A_ORIENTED_TEXTURES_ON

#include "Assets/Alloy/Shaders/Lighting/Standard.cginc"
#include "Assets/Alloy/Shaders/Type/Standard.cginc"
    
void aSurfaceShader(
    inout ASurface s)
{
    aParallax(s);
    aDissolve(s);
    aMainTextures(s);
    aDetail(s);
    aTeamColor(s);
    aDecal(s);
    aEmission(s);

    aDirectionalBlend(s);
    aOrientedTextures(s);
    aCutout(s);

    s.mask = 1.0h;
    aAo2(s);
    aWetness(s);
    aRim(s);
}

#endif // ALLOY_SHADERS_DEFINITION_ORIENTED_BLEND_CGINC
