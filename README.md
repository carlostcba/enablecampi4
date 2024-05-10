# Habilitar la Cámara en Raspberry Pi 4

Este script automatiza el proceso de habilitar el módulo de cámara en una Raspberry Pi 4 que ejecuta el sistema operativo Raspbian. También incluye pasos para actualizar el BIOS y modificar el archivo de configuración para un uso óptimo de la cámara.

## Uso

Sigue estos pasos para ejecutar el script en tu Raspberry Pi:

1. **Clonar el Repositorio:**
    ```bash
    git clone https://github.com/carlostcba/enablecampi4.git
    ```

2. **Navegar al Directorio del Repositorio:**
    ```bash
    cd enablecampi4
    ```

3. **Hacer el Script de Bash Ejecutable:**
    ```bash
    chmod +x en_cam_rpi.sh
    ```

4. **Ejecutar el Script:**
    ```bash
    ./en_cam_rpi.sh
    ```

5. **Seguir las Indicaciones en Pantalla:**
    El script te guiará a través del proceso, actualizando los paquetes del sistema, actualizando el BIOS, habilitando el módulo de cámara y modificando el archivo de configuración según corresponda.

6. **Reiniciar tu Raspberry Pi:**
    Después de probar la cámara, reinicia tu Raspberry Pi para que los cambios surtan efecto.

7. **Probar la Cámara:**
    Después de que el script haya finalizado, puedes probar la cámara utilizando comandos como `libcamera-hello`:
   
    ```bash
    libcamera-hello -t 0
    ```
    Esto ejecutará el comando `libcamera-hello` con el parámetro `-t 0`, que toma una foto y la muestra en pantalla.

## Nota Importante

Este script está diseñado para Raspberry Pi 4 que ejecuta el sistema operativo Raspbian. Asegúrate de haber realizado una copia de seguridad de cualquier dato importante antes de ejecutar el script.

Raspberry Pi OS with desktop
Release date: March 15th 2024
System: 64-bit
Kernel version: 6.6
Debian version: 12 (bookworm)

## Problemas

Si encuentras algún problema o tienes sugerencias de mejoras, no dudes en abrir un problema o enviar una solicitud de extracción en [GitHub](https://github.com/carlostcba/enablecampi4).

