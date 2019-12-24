#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"

void Generator_float(float2 uv, float seed, out float output)
{
    uint2 pos = uv * 8;
    pos.x = min(pos.x, 7 - pos.x) ;

    uint iseed = pos.y * 8 + pos.x + seed * 100;

    output = Hash(iseed) < 0.2 + pos.x * 0.2;
}
