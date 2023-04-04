#version 330 core
layout (location = 0) in vec3 position;
out vec3 TexCoords;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 ratote;

void main()
{
    gl_Position =   projection * view * ratote * vec4(position, 1.0);  
    TexCoords = position;
}