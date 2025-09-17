FROM python:3.7.11-slim
# Indicamos la imagen base de python 3.7.11-slim que es una version ligera de python
WORKDIR  /python-api
# Creamos y establecemos la carpeta de trabajo 
COPY requirements.txt requirements.txt
# Copiamos el archivo de requerimientos a la carpeta de trabajo creada
RUN pip install -r requirements.txt
# Instalamos las librerias del archivo de requerimientos 
COPY . .
# Copiamos todo el contenido del proyecto a la carpeta de trabajo 
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
# Indicamos el comando para ejecutar la aplicacion de flask 

