# Dockerfile para workspace multilínguas
FROM ubuntu:24.04

## Instala dependências básicas e suporte a múltiplas linguagens
RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-venv \
    jupyter-notebook python3-jupyter-client \
    r-base \
    openjdk-21-jdk default-jdk \
    gcc g++ build-essential \
    mono-complete \
    ruby-full \
    lua5.4 \
    php \
    golang-go \
    nodejs npm \
    kotlin \
    perl \
    scala \
    ghc cabal-install haskell-stack \
    elixir \
    zsh \
    curl git wget unzip \
    apt-transport-https ca-certificates gnupg && \
    rm -rf /var/lib/apt/lists/*

## Instala Dart (repositório oficial)
RUN install -d -m 0755 /etc/apt/keyrings && \
    curl -fsSL https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /etc/apt/keyrings/dart.gpg && \
    sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/dart.gpg] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" > /etc/apt/sources.list.d/dart_stable.list' && \
    apt-get update && apt-get install -y dart && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Instala Godot Engine (para rodar arquivos .gd)
RUN wget https://downloads.tuxfamily.org/godotengine/4.2.2/Godot_v4.2.2-stable_linux.x86_64.zip -O /tmp/godot.zip && \
    unzip /tmp/godot.zip -d /opt/godot && \
    ln -s /opt/godot/Godot_v4.2.2-stable_linux.x86_64 /usr/local/bin/godot && \
    rm /tmp/godot.zip

# Instala Jupyter Notebook e jupyter-client via apt (compatível com Python e IRkernel)
RUN apt-get update && apt-get install -y jupyter-notebook python3-jupyter-client && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Instala IRkernel para R no Jupyter
RUN R -e "install.packages('IRkernel', repos='https://cloud.r-project.org/')" && \
    R -e "IRkernel::installspec()"

# Cria usuário padrão
RUN useradd -ms /bin/bash devuser
USER devuser
WORKDIR /home/devuser/workspace

# Porta padrão do Jupyter
EXPOSE 8888

CMD ["bash"]
