# Utiliser l'image Node.js officielle
FROM node:16

# Répertoire de l'application
WORKDIR /usr/src/app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le code source dans l'image Docker
COPY . .

# Exposer le port de l'application
EXPOSE 8080

# Démarrer l'application
CMD ["node", "src/app.js"]
