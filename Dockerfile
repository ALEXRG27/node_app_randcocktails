FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
# Expone el puerto 8080 al mundo exterior
EXPOSE 8080
# Comando para ejecutar la aplicación
CMD ["node", "server.js"]
