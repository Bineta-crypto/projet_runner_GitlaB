# Utiliser une image Node.js officielle comme image de base
FROM node:14

# Créer un répertoire pour l'application
WORKDIR /usr/src/app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du code source
COPY . .

# Exposer le port utilisé par l'application
EXPOSE 8080

# Définir la commande pour démarrer l'application
CMD ["node", "index.js"]
