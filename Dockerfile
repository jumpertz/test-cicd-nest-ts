# Utilise l'image officielle Node.js comme base
FROM node:18
# Crée le répertoire de travail de l'application
WORKDIR /app

# Copie les fichiers de package.json et package-lock.json
COPY package*.json ./

# Installe les dépendances de l'application
RUN npm install

# Copie les fichiers de l'application
COPY . .

# Expose le port 3000 utilisé par l'application
EXPOSE 3000

# Démarre l'application
CMD [ "npm", "start" ]
