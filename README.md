

# Workspace Multilínguas para Codespaces

**Abra ou fork este repositório no GitHub Codespaces e comece a programar imediatamente!**

> **Não é necessário configurar nada, instalar dependências ou ajustar o ambiente. Tudo já está pronto para uso!**

Este workspace foi criado para que qualquer pessoa possa começar a codificar sem instalar nada no computador. Basta abrir no Codespaces (ou em um container Docker) e usar normalmente.

## Recursos e Linguagens Suportadas
- **Lua**
- **Ruby**
- **Rust**
- **C**
- **C++**
- **C#**
- **Java**
- **Python** (com Jupyter Notebook)
- **R** (com kernel para Jupyter)
- **PHP**
- **Go**
- **Node.js**
- **TypeScript**
- **Kotlin**
- **Swift**
- **Perl**
- **Scala**
- **Haskell**
- **Dart**
- **Julia**
- **Elixir**
- **Shell Script**
- **Godot (.gd)**

## Como usar

### 1. Comece a programar imediatamente
- Todos os compiladores, interpretadores e ferramentas já estão instalados no ambiente Codespaces.
- Não é necessário instalar nada, configurar variáveis ou rodar comandos extras.
- Basta criar ou editar arquivos no workspace e usar os botões de execução do VS Code ou o menu de tarefas (Ctrl+Shift+B).

### 2. Executando códigos
- **Lua**: `text.lua` — Task "Run Lua"
- **Ruby**: `main.rb` — Task "Run Ruby"
- **Rust**: `main.rs` — Task "Run Rust"
- **C**: `main.c` — Task "Run C"
- **C++**: `main.cpp` — Task "Run C++"
- **C#**: `main.cs` — Task "Run C#"
- **Java**: `Main.java` — Task "Run Java"
- **Python**: `main.py` ou Notebooks `.ipynb` — Task "Run Python" ou use Jupyter
- **R**: Notebooks `.ipynb` com kernel R
- **PHP**: `main.php` — Task "Run PHP"
- **Godot (.gd)**: `skibidi.gd` ou scripts em `godot_project/` — Task "Run Godot (.gd)"

### 3. Executando scripts Godot (.gd)
- O workspace já inclui exemplos de arquivos `.gd` e um projeto Godot em `godot_project/`.
- Para rodar scripts `.gd`, é necessário que o binário do Godot Engine esteja disponível. Recomenda-se baixar o binário [aqui](https://godotengine.org/download/linux) e colocá-lo em `godot_bin/`.
- Atualize a task para usar o binário local:
  ```jsonc
  "command": "./godot_bin/Godot_v4.2.2-stable_linux.x86_64 --headless --script skibidi.gd"
  ```
- Assim, basta clicar em "Executar Tarefa" e escolher "Run Godot (.gd)".

### 4. Usando com Docker
- O workspace inclui um `Dockerfile` para ambiente totalmente isolado.
- Basta rodar:
  ```bash
  docker build -t workspace-multilinguas .
  docker run -it -p 8888:8888 workspace-multilinguas
  ```
- O ambiente já terá todas as linguagens e ferramentas instaladas.

### 5. Usando com Codespaces
- **Abra ou fork este repositório no GitHub Codespaces.**
- O ambiente será provisionado automaticamente com todas as dependências, extensões e ferramentas necessárias.
- **Você já pode começar a codificar, executar e testar seus arquivos imediatamente!**

## Estrutura do Projeto
```
.vscode/tasks.json         # Tasks para execução automática de códigos
Dockerfile                # Ambiente Docker pré-configurado
README.md                 # Este guia
/godot_project/           # Projeto Godot pronto para uso
/godot_bin/               # (Opcional) Binário do Godot Engine
```

## Observações
- Para rodar scripts `.gd`, é necessário o binário do Godot. Por questões de tamanho, não está incluído no repositório, mas pode ser baixado e colocado em `/godot_bin/`.
- **Todas as outras linguagens funcionam imediatamente, sem nenhuma configuração extra.**

---


---

**Abra ou fork no Codespaces e comece a programar agora! Este workspace foi feito para facilitar sua vida e de seus amigos, sem complicações de instalação ou configuração. Basta abrir e usar!**

### Python
- Scripts: 
  ```bash
  .venv/bin/python arquivo.py
  ```
- Jupyter Notebook:
  Basta abrir o arquivo `.ipynb` no VS Code e executar as células.

### R
- Scripts:
  ```bash
  Rscript arquivo.R
  ```
- Jupyter Notebook (R):
  Instale o kernel IRkernel no R:
  ```R
  install.packages('IRkernel')
  IRkernel::installspec()
  ```
  Depois, crie um notebook e selecione o kernel R.

### Java
- Compile e execute:
  ```bash
  javac Main.java
  java Main
  ```

### C
- Compile e execute:
  ```bash
  gcc main.c -o main && ./main
  ```

### C++
- Compile e execute:
  ```bash
  g++ main.cpp -o main && ./main
  ```

### C#
- Compile e execute:
  ```bash
  mcs main.cs && mono main.exe
  ```

### Ruby
- Execute:
  ```bash
  ruby main.rb
  ```

### Lua
- Execute:
  ```bash
  lua main.lua
  ```

## Ambiente isolado
Se quiser um ambiente totalmente isolado, use um container Docker ou Codespace. Assim, nada será instalado no seu computador.

## Extensões recomendadas
Ao abrir o workspace no VS Code, instale as extensões sugeridas para cada linguagem (VS Code irá sugerir automaticamente).

---
Dúvidas ou problemas? Só perguntar!
