#PARTIR DE UNA IMAGEN
FROM node:12
# ESPACIO DE TRABAJO
WORKDIR /dockertest
# ANADIR PACKAGE
ADD package.json package-lock.json /dockertest/

# INSTALAR DEPENDENCIAS
RUN npm install

#COPIAR EL CODIGO
ADD . /dockertest

#EXPOSE
EXPOSE 5000

#CORRER EL CONTENEDOR
CMD ['node', 'app.js']


