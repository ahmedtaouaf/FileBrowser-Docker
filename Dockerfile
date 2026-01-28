# Utilisation de l'image officielle stable
FROM filebrowser/filebrowser:latest

# On passe directement les arguments sans répéter le nom du programme
# -p 8080 : Port interne utilisé par Railway
# -d : Emplacement de la DB dans votre volume
# --root : Emplacement de vos fichiers dans votre volume
CMD ["-a", "0.0.0.0", "-p", "8080", "-d", "/my-data/filebrowser.db", "--root", "/my-data/storage"]
