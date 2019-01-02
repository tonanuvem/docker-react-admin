# docker-react-admin
React Admin with docker

Baixa o Dockerfile e depois construir a imagem:

> git clone

> cd docker-react-admin

> docker build -t docker-react-admin .

> docker run --name docker-react-admin -it -p 3000:3000 -d docker-react-admin

ou para rodar na mesma rede do strapi:

> docker run --name docker-react-admin -it -p 3000:3000 --network strapi-docker_default -d docker-react-admin

depois entrar no container e executar o ambiente dev:

> docker exec -ti ID bash

> create-react-app test-admin

> cd test-admin/

> yarn add react-admin ra-data-simple-rest ra-data-json-server prop-types

> yarn start

Fontes:

<li> https://marmelab.com/react-admin/Tutorial.html

<li> https://strapi.io/

<li> https://github.com/axios/axios
