#!/bin/bash
# Autor: Andrés Eduardo García Márquez
# Descripción: Automatización de instalación de NVM v0.40.3 de forma segura, clara y eficaz.

main() {
    echo "🔹 Bienvenido/a, $1"

    echo "Estableciendo Curl para descargar y instalar"
    if ! command -v curl >/dev/null; then
        echo "🔍 'curl' no está instalado. Instalando..."
        sudo apt update && sudo apt install curl -y
    fi
    echo "Validando si está instalado"

    if command -v nvm >/dev/null; then
        echo "ℹ️ NVM ya está instalado. Versión: $(nvm --version)"
        return 0
    else
        echo " NVM No esta instalando nvm se procede con la descarga"
    fi

    echo "⬇️ Descargando e instalando NVM v0.40.3..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

    echo "Activando nvm"
    source ~/.bashrc

    echo "✅ Verificando instalación de NVM..."
    if command -v nvm >/dev/null; then
        echo "✅ Versión de nvm instalada: $(nvm --version)"
    else
        echo "❌ NVM no se instaló correctamente."
        exit 1
    fi

    echo "📦 Instalando la versión LTS de Node.js con NVM..."
    nvm install --lts
    nvm use --lts
    npm install -g npm@latest
    # 1. npm-check-updates (ncu)
    # Revisa y actualiza dependencias de package.json
    npm install -g npm-check-updates

    # 2. http-server
    # Sirve archivos estáticos como un pequeño servidor local
    npm install -g http-server

    # 3. nodemon
    # Reinicia tu app Node.js al detectar cambios en los archivos
    npm install -g nodemon

    # 4. pm2
    # Administrador de procesos para ejecutar aplicaciones Node.js en segundo plano
    npm install -g pm2

    # 5. serve
    # Servidor estático sencillo para mostrar contenido de carpetas (como dist/)
    npm install -g serve

    # 6. typescript
    # Instala el compilador TypeScript (tsc)
    npm install -g typescript

    # 7. eslint
    # Analizador de código JavaScript/TypeScript (solo si lo usás globalmente)
    npm install -g eslint

    # 8. prettier
    # Formateador de código para JS, TS, JSON, CSS, HTML, etc. (si lo usás fuera de proyectos)
    npm install -g prettier

    # 9. zx
    # Herramienta de scripting moderna con sintaxis de JavaScript
    npm install -g zx

    npm install -g @google/gemini-cli

    echo "🔢 Node.js instalado: $(node -v)"

    echo "✅ Script ejecutado correctamente en: $(date)"
}

main "Andrés"
