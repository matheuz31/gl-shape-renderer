FROM ubuntu:22.04

# Variáveis de ambiente para não travar nas instalações
ENV DEBIAN_FRONTEND=noninteractive

# Atualiza e instala dependências básicas
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libx11-dev \
    libxi-dev \
    libxrandr-dev \
    libxinerama-dev \
    libxcursor-dev \
    libglfw3-dev \
    libglm-dev \
    && rm -rf /var/lib/apt/lists/*

# Cria diretório de trabalho
WORKDIR /workspace

# Comando padrão
CMD ["/bin/bash"]
