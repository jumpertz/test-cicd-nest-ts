# image de base
FROM node:14-alpine

# Répertoir de travail
WORKDIR /app

# Copie des fichier de l'app dans le conteneur
COPY . .

# Installation des dépendances
RUN npm install

# Construction de l'app
RUN npm run build

# Exposition du port 3000
EXPOSE 3000

# Commande à lancer au démarrage du conteneur
CMD [ "npm", "start", "start:prod" ]