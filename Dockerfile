# Utiliza una imagen base de Python 3.7
FROM python:3.7

# Establece el directorio de trabajo en la aplicación
WORKDIR /app

# Copia el archivo requirements.txt
COPY requirements.txt requirements.txt

# Instala las dependencias
RUN pip install -r requirements.txt

# Copia el código de la aplicación
COPY . .

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]