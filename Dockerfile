# On utilise l'image officielle
FROM filebrowser/filebrowser:latest

# On ne crée pas de dossier ici pour éviter les erreurs de permission
# Railway montera le volume directement

# Commande de démarrage simplifiée
# On pointe vers /my-data (le volume Railway)
CMD ["filebrowser", "-a", "0.0.0.0", "-p", "8080", "-d", "/my-data/filebrowser.db", "--root", "/my-data/storage"]
