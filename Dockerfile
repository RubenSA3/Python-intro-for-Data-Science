# Imagen base oficial de Python 3.14 
FROM python:3.14-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo de dependencias
COPY requirements.txt .

# Instalar las librerías necesarias sin guardar archivos temporales
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el contenido del proyecto al directorio de trabajo
COPY . .

# Exponer el puerto configurado para MLflow
EXPOSE 5001

# Comando para ejecutar el servidor de MLflow al iniciar el contenedor
CMD ["mlflow", "ui", "--port", "5001", "--host", "0.0.0.0"]