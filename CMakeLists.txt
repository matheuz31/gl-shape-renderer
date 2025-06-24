cmake_minimum_required(VERSION 3.10)
project(OpenGL_Project)

set(CMAKE_CXX_STANDARD 17)

# Arquivos fonte

file(GLOB SOURCES "src/*.cpp" "gl3w/src/gl3w.c")

# Executável
add_executable(OpenGLApp ${SOURCES})

# Diretórios de include
target_include_directories(OpenGLApp PRIVATE 
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    /usr/include
    ${CMAKE_CURRENT_SOURCE_DIR}/gl3w
    ${CMAKE_CURRENT_SOURCE_DIR}/gl3w/include
    ${CMAKE_CURRENT_SOURCE_DIR}/src
)

# Linkagem
find_package(OpenGL REQUIRED)

target_link_libraries(OpenGLApp
    OpenGL::GL
    glfw
)
