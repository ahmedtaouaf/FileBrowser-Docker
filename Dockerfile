# Base officielle stable
FROM filebrowser/filebrowser:latest

# On prépare un dossier unique pour tout stocker
RUN mkdir -p /my-data

# Commande de démarrage
# On met la base de données ET les fichiers dans /my-data
# Comme ça, un seul volume Railway suffit !
CMD ["filebrowser", "-a", "0.0.0.0", "-p", "8080", "-d", "/my-data/filebrowser.db", "--root", "/my-data/storage"]
