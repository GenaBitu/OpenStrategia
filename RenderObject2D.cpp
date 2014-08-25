#include "Main.hpp"
using namespace std;
using namespace glm;

RenderObject2D::RenderObject2D()        //DEBUG ONLY
{
     const GLfloat vertex_buffer_data[]{
		-0.5f,-1.0f, 0.0f,
		 1.0f,-1.0f, 0.0f,
		 1.0f, 1.0f, 0.0f,
	};
	const GLuint element_buffer_data[]{0,1,2};
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertex_buffer_data), vertex_buffer_data, GL_STATIC_DRAW);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(element_buffer_data), element_buffer_data, GL_STATIC_DRAW);
	elementCount = 3;
}

RenderObject2D::RenderObject2D(std::vector<GLfloat>* vertexData, std::vector<GLuint>* indexData) : RenderObject(vertexData, indexData) {}

void RenderObject2D::render(const Program* const prg) const
{
    glDisable(GL_DEPTH_TEST);
    mat4 identity{};
    RenderObject::render(prg, &identity, &identity);
    glEnable(GL_DEPTH_TEST);
}
