FROM filebrowser/filebrowser:latest

# On repasse en utilisateur root pour avoir les droits sur le volume Railway
USER root

# Commande de démarrage
CMD ["-a", "0.0.0.0", "-p", "8080", "-d", "/my-data/filebrowser.db", "--root", "/my-data/storage"]
