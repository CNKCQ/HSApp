
attribute mediump vec3 position;
attribute mediump vec2 textureCoordinate;
uniform mat4 transformMatrix;
varying mediump vec2 coordinate;
void main(void)
{
    gl_Position = transformMatrix * vec4(position, 1);
    coordinate = textureCoordinate;
}