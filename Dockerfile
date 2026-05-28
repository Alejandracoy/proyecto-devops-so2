# Usamos una imagen ligera de Python
FROM python:3.9-slim

# Creamos una carpeta de trabajo
WORKDIR /app

# Instalamos la librería Flask
RUN pip install flask

# Copiamos nuestro código al contenedor
COPY app.py .

# Exponemos el puerto 5000
EXPOSE 5000

# Comando para arrancar la app
CMD ["python", "app.py"]
