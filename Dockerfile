# crear dockerfile para crear una imagen de docker de node 14 alpine que exponga el puerto 3001 y copie todos los archivos del directorio actual al directorio /app en el contenedor

FROM node:14-alpine
EXPOSE 3001
COPY . /app
WORKDIR /app
RUN npm install
CMD ["npm", "start"]
