
precision highp float;

uniform sampler2D SamplerY;
uniform sampler2D SamplerUV;
varying highp vec2 coordinate;

void main(void)
{
    highp vec3 yuv;
    highp vec3 rgb;
    yuv.x = texture2D(SamplerY, coordinate).r - (16.0/255.0);
    yuv.yz = texture2D(SamplerUV, coordinate).rg - vec2(0.5, 0.5);
    rgb = mat3(1.164,  1.164, 1.164,
               0.0, -0.213, 2.112,
               1.793, -0.533,   0.0) * yuv;
    gl_FragColor = vec4(rgb, 1);
}