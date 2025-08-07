# nvm-installer-linux

Instalación segura de NVM, Node.js LTS y herramientas esenciales con un solo comando.

---

## Tabla de contenidos

1. [Descripción](#descripción)
2. [Requisitos](#requisitos)
3. [Instalación](#instalación)
4. [Uso rápido](#uso-rápido)
5. [Parámetros y personalización](#parámetros-y-personalización)
6. [Estructura del proyecto](#estructura-del-proyecto)
7. [Hoja de ruta](#hoja-de-ruta)
8. [Contribuciones](#contribuciones)
9. [Pruebas](#pruebas)
10. [Licencia](#licencia)
11. [Autores y agradecimientos](#autores-y-agradecimientos)
12. [Contacto](#contacto)
13. [Registro de cambios](#registro-de-cambios)

---

## Descripción

`install_nvm.sh` automatiza la instalación de **NVM v0.40.3**, la versión LTS de Node.js y un conjunto de utilidades globales (npm‑check‑updates, http‑server, nodemon, pm2, serve, typescript, eslint, prettier, zx y @google/gemini-cli). Está pensado para entornos Debian/Ubuntu, minimiza errores comunes y ofrece mensajes claros en castellano.

---

## Requisitos

* **Sistema operativo**: Linux (Debian, Ubuntu o derivados)
* **Permisos sudo** para instalar paquetes con `apt`
* `curl` (se instala automáticamente si no está presente)

---

## Instalación

```bash
# Clonar el repositorio
git clone https://github.com/andresgarcia0313/nvm-installer-linux.git
cd nvm-installer-linux

# Dar permisos de ejecución
chmod +x install_nvm.sh

# Ejecutar el script
./install_nvm.sh "TuNombre"
```

> Sustituye `TuNombre` por el nombre que aparecerá en el saludo inicial.

---

## Uso rápido

Una vez ejecutado el script:

1. Verifica que NVM responde:

   ```bash
   nvm --version
   ```
2. Comprueba la versión de Node.js LTS instalada:

   ```bash
   node -v
   ```
3. Disfruta de las utilidades globales ya instaladas (`npm-check-updates`, `nodemon`, `pm2`, etc.).

---

## Parámetros y personalización

| Variable                | Descripción                                  | Valor por defecto |
| ----------------------- | -------------------------------------------- | ----------------- |
| Primer argumento (`$1`) | Nombre a mostrar en el mensaje de bienvenida | "Andrés"          |

Para modificar versiones específicas de NVM o Node, edita las siguientes líneas del script:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
nvm install --lts
```

---

## Estructura del proyecto

```
📁 nvm-installer-linux/
├── install_nvm.sh  # Script principal
└── README.md       # Esta guía
```

---

## Hoja de ruta

* [ ] Detección de otras distribuciones (Arch, Fedora)
* [ ] Opción silenciosa `--quiet`
* [ ] Soporte para desinstalar NVM y paquetes globales

---

## Contribuciones

1. Crea un *fork* del proyecto.
2. Crea una rama con tu mejora: `git checkout -b feature/mi-mejora`.
3. Haz *commit* de tus cambios: `git commit -m "feat: explica tu mejora"`.
4. Sube la rama: `git push origin feature/mi-mejora`.
5. Abre un *pull request* y describe tu propuesta.

Se sigue el formato de mensajes de *commit* de Conventional Commits.

---

## Pruebas

Este proyecto contiene solo un script. Para validar su correcto funcionamiento:

```bash
shellcheck install_nvm.sh
bash -n install_nvm.sh
```

Si tienes ideas para *unit tests* con [Bats](https://github.com/bats-core/bats-core), ¡bienvenidas!

---

## Licencia

Distribuido bajo la licencia GNU. Consulta la web de la licencia GNU para más detalles.

---

## Autores y agradecimientos

| Nombre                        | Rol                |
| ----------------------------- | ------------------ |
| Andrés Eduardo García Márquez | Autor y mantenedor |

Gracias a la comunidad de NVM y Node.js por la inspiración y a quienes prueben y reporten mejoras.

---

## Contacto

Abre un *issue* en GitHub o escríbeme a [andresgarcia0313@gmail.com](mailto:andresgarcia0313@gmail.com).

---

## Registro de cambios

Consulta el apartado *Releases* en GitHub para ver las novedades de cada versión.
