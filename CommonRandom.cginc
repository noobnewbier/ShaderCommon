#ifndef NOOBNEWBIER_INCLUDE_COMMON_RANDOM
#define NOOBNEWBIER_INCLUDE_COMMON_RANDOM

float random (float2 uv)
{
    return frac(sin(dot(uv,float2(12.9898,78.233)))*43758.5453123);
}

#endif