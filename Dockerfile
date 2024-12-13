# Étape 1 : Utiliser une image de base officielle Node.js
FROM node:20-alpine

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Copier le reste des fichiers du projet
COPY . .

# Étape 6 : Exposer le port sur lequel l'application sera accessible
EXPOSE 3000

# Étape 7 : Définir la commande par défaut pour démarrer le serveur
CMD ["npm", "start"]