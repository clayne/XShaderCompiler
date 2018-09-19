
// Reflection Test 1
// 10/06/2017

#define BAR

struct S {
    struct {
        int lol;
    } rofl;
    float2 foo, bar;
};

cbuffer Buf2 : register(b2) {
	float4x4 wvpMatrix;
    float a, b[3];
    S x[2];
    float3x3 c[2][3];
};

uniform float4x4 wMatrix, unused1;
uniform int unused2;

Texture2D tex1 : register(t1);

[numthreads(1, 2, 3)]
void main() {
    /*SamplerComparisonState smpl1 {
        Filter = MIN_MAG_MIP_LINEAR;
    };*/
    
	tex1;
	//wvpMatrix;
	wMatrix;
    c;
}
