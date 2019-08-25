#ifndef NOOBNEWBIER_INCLUDE
#define NOOBNEWBIER_INCLUDE

float4 WhenEqual(float4 x, float4 y) {
  return 1.0 - abs(sign(x - y));
}

float4 WhenNotEqual(float4 x, float4 y) {
  return abs(sign(x - y));
}

float4 WhenGreater(float4 x, float4 y) {
  return max(sign(x - y), 0.0);
}

float4 WhenLess(float4 x, float4 y) {
  return max(sign(y - x), 0.0);
}

float4 WhenGreaterOrEqual(float4 x, float4 y) {
  return 1.0 - WhenLess(x, y);
}

float4 WhenLessOrEqual(float4 x, float4 y) {
  return 1.0 - WhenGreater(x, y);
}

float WhenEqual(float x, float y) {
  return 1.0 - abs(sign(x - y));
}
    
float WhenNotEqual(float x, float y) {
  return abs(sign(x - y));
}

float WhenGreater(float x, float y) {
  return max(sign(x - y), 0.0);
}

float WhenLess(float x, float y) {
  return max(sign(y - x), 0.0);
}

float WhenGreaterOrEqual(float x, float y) {
  return 1.0 - WhenLess(x, y);
}

float WhenLessOrEqual(float x, float y) {
  return 1.0 - WhenGreater(x, y);
}

float4 And(float4 a, float4 b) {
  return a * b;
}

float4 Or(float4 a, float4 b) {
  return min(a + b, 1.0);
}

float4 Xor(float4 a, float4 b) {
  return (a + b) % 2.0;
}

float4 Not(float4 a) {
  return 1.0 - a;
}


//Noise
float random (float2 uv)
{
    return frac(sin(dot(uv,float2(12.9898,78.233)))*43758.5453123);
}

#endif