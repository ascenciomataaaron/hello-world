# Microservicio "Hola Mundo" - Despliegue en AWS con CI/CD

El objetivo de este proyecto es evidenciar la habilidad para desarrollar, empaquetar en contenedores y automatizar el despliegue de una aplicación en la nube mediante el uso de tecnologías actuales como Terraform, Docker y GitHub Actions.

---

## Descripción del proyecto

El microservicio expone un único endpoint HTTP que responde con un mensaje simple en formato JSON:

```json
{"message": "Hello World"}

```
## Tecnologías utilizadas

| Tecnología        | Descripción                                        |
| ----------------- | -------------------------------------------------- |
| Python            | Lenguaje principal (versión 3.11)                  |
| Flask             | Microframework web para construir el endpoint      |
| Docker            | Empaquetado de la aplicación en contenedor         |
| AWS ECS (Fargate) | Servicio para ejecutar contenedores sin servidores |
| AWS ECR           | Repositorio de imágenes Docker                     |
| Terraform         | Infraestructura como código (IaC)                  |
| GitHub Actions    | Automatización de CI/CD                            |
| CloudWatch        | Observabilidad y logging de contenedores           |


## Estructura del proyecto

hello-world/
├── src/
│   └── app.py
├── Dockerfile
├── requirements.txt
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── provider.tf
├── .github/workflows/
│   └── deploy.yaml
├── .gitignore
└── README.md           


## Como ejecutar el proyecto

# Opción 1: Ejecutar localmente con Python

Clona el repositorio:

$ git clone https://github.com/ascenciomataaaron/hello-world.git
cd hello-world

Crea un entorno virtual:


$ python -m venv venv
$ source venv/bin/activate  # En Windows: venv\Scripts\activate

Instala dependencias:

$ pip install flask

Ejecuta el microservicio:

$ python src/app.py
Abre tu navegador o usa curl:

$ curl http://localhost
# {"message": "Hello World"}


# Opción 2: Ejecutar localmente con Docker


Construye la imagen:


$ docker build -t hola-mundo-app .

Ejecuta el contenedor:


$ docker run -d -p 80:80 hola-mundo-app
Prueba el endpoint:


$ curl http://localhost


# Opción 3: Despliegue automático en AWS


Paso 1: Crear la infraestructura con Terraform
Ve a la carpeta terraform/:

$ cd terraform

Inicializa Terraform:

$ terraform init

Aplica el despliegue:

$ terraform apply



## Probar el microservicio en AWS
Una vez desplegado:

En la pestaña Actions de GitHub, revisa los logs.

Verás una línea como:


IP Pública de la tarea ECS: 3.95.27.82
Prueba el servicio:


curl http://3.95.27.82
# {"message": "Hello World"}


Autor: Aaron Ascencio Mata (Prueba técnica para Fraternitas)