FROM python:3.7.11-slim 
# Establece la imagen que se va a usar
WORKDIR  /python-api
# Indica la dirección del directorio con el que se va trabajar
COPY requirements.txt requirements.txt
# Copia archivos desde la fuente al destino
RUN pip install -r requirements.txt
# Ejecuta los comandos de la imagen actual
COPY . .
# Copia el contenido del host a la raíz
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
# Da opciones por defecto al contenedor