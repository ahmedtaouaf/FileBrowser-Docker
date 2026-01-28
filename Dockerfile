# On part d'une base légère (Alpine est plus petit qu'Ubuntu, idéal pour Railway)
FROM filebrowser/filebrowser:latest

# On expose le port que Railway va nous donner
ENV PORT=8080

# On définit où les données seront stockées
# /srv/ = Vos fichiers (photos, docs)
# /database/ = Vos réglages (utilisateurs, mots de passe)
VOLUME /srv
VOLUME /database

# Commande pour lancer FileBrowser sur le port dynamique de Railway
CMD ["filebrowser", "-a", "0.0.0.0", "-p", "8080", "-d", "/database/filebrowser.db"]
