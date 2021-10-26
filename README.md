# Workshop Wiremock

Este repositorio contiene las instrucciones necesarias para ejecutar un contenedor local con [Wiremock](http://wiremock.org/) y construir de manera practica mocks con diferentes validaciones.

---
## Prerrequisitos
+ [Docker desktop](https://www.docker.com/)

---
## Instalacion

Descargar el repositorio con mediante la linea de comandos 
```bash
git clone 
```

Nos ubicamos en la carpeta del repositorio con el comando
```bash
cd
```

En la carpeta del proyecto, se encuentra el archivo [Dockerfile](./Dockerfile) necesario para construir la imagen de Docker.

Desde la linea de comandos construimos la imagen con el comando, indica que crearemos una imagen llamada `wiremock`con el tag `latest`.

```bash
docker build  -t "wiremock:latest" .
```

Una vez creada la imagen ejecutamos el contenedor, en el flag `-p` determinamos que se ejecute en nuestra maquina local por el puerto **8000**, con el nombre `--name` **wiremock**.

```bash
docker run --name wiremock -p 8000:8080 wiremock
```

Si el comando anterior ejecuto correctamente podremos ingresar a la siguiente URL

[localhost:8000/__admin/requests](http://localhost:8000/__admin/requests)

---

## Ejercicios

Se realizaran dos ejercicios, el primero modificar un endpoint existente y el segundo crear un endpoint desde cero. Ambos ejercicios se haran de acuerdo al **grupo** asignado.

Verificar ambos ejercicios en la carpeta [Groups](./Groups).


---

# Extras

Para ejecutar un contenedor que se encuentra detenido
```bash
docker start name_container
```

Para detener un contenedor que se encuentra iniciado
```bash
docker stop name_container
```

Para copiar archivos desde mi maquina local al contenedor (sin importar que este en ejecucion) 
```bash
docker cp text.txt name_container:/path/text.txt
docker cp mappings.json wiremock:/home/wiremock/mappings/mappings.json
```
Para ejecutar un comando diferente en el contenedor de docker sin cerrar la linea de comandos actual
```bash
docker exec -it name_container command
docker exec -it wiremock bash
```
