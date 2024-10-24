# Utiliser l'image officielle Nginx comme image de base
FROM nginx:alpine

# Installer le package file
RUN apk add --no-cache file

# Copier le fichier de configuration Nginx dans le conteneur
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Copier les fichiers HTML dans le répertoire approprié
COPY html /var/concentration/html/

# Exposer le port 80
EXPOSE 80

# Commande par défaut pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
