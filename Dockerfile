#PARTIR DE UNA IMAGEN
FROM node:12

# AÑADIR PACKAGE
ADD package.json package-lock.json

# INSTALAR DEPENDENCIAS
RUN npm install

#COPIAR EL CODIGO
ADD . app.js

#EXPOSE
EXPOSE 5000

#CORRER EL CONTENEDOR
CMD ['node', 'app.js']


