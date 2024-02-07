https://pub.dev/packages/leodt_parser/install

docker run -d -p 81:80 --name httpd-container httpd

token
git config --global credential.helper stor


devcontainer configuration - https://toptechtips.github.io/2023-05-17-docker-compose-multiple-dev-containers/
docker compose build - https://docs.docker.com/compose/compose-file/build/
https://code.visualstudio.com/docs/devcontainers/containers


Build conmtainer for flutter only
 docker build -f Dockerfile-flutter.txt -t flutter .
 docker run -v ${pwd}:/app -it flutter
Note ${pwd} with curly brackets works. ) bracket doesnt
from here - https://hasnainm.hashnode.dev/flutter-web-app-to-a-docker-container

on Ububnti/WSL
docker build -t leodt .
docker run -p 80:80 -v $(pwd):/app -it leodt