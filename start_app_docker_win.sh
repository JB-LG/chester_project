# Commande linux, d'où le fichier bash. Je ne connais pas l'équivalent windows. Sous windows utiliser GitforWindows pour les .sh
if [[ "$(docker images -q chester_project:latest 2> /dev/null)" == "" ]]; then
  docker build -t chester_project:latest .
fi
(sleep 3 && python -m webbrowser http://localhost:8040) &
docker run -d -p 8040:8040 chester_project
docker ps -aqf "ancestor=chester_project"
echo docker logs $(!!)