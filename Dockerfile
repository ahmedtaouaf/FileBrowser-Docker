FROM ubuntu:latest

# Éviter les questions interactives
ENV DEBIAN_FRONTEND=noninteractive

# Installation des outils de base
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Téléchargement et installation automatique de FileBrowser
RUN curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash

# Création du dossier pour la base de données
RUN mkdir -p /data

# Commande de démarrage : lance FileBrowser sur le port Railway ($PORT)
# On utilise /data/filebrowser.db pour que ce soit facile à persister via un Volume
CMD filebrowser -d /data/filebrowser.db --address 0.0.0.0 --port $PORT --root /
