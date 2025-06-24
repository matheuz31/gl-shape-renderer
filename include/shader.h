#pragma once

#include <string>
#include <GL/gl3w.h>

class Shader {
public:
    unsigned int ID;

    // Construtor: lê, compila e linka shaders
    Shader(const char* vertexPath, const char* fragmentPath);

    // Ativa o shader
    void use();

    // Funções utilitárias para setar uniforms
    void setBool(const std::string& name, bool value) const;
    void setInt(const std::string& name, int value) const;
    void setFloat(const std::string& name, float value) const;
};
