# Usa una imagen base liviana de Python
FROM python:3.11-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el microservicio dentro del contenedor
COPY src/app.py .

# Instala Flask
RUN pip install flask

# Expone el puerto 80 (el mismo que se usaba con Nginx)
EXPOSE 80

# Comando para iniciar el servidor Flask
CMD ["python", "app.py"]
