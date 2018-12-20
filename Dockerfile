FROM node:8

WORKDIR /usr/src/app
# COPY package*.json ./

RUN mkdir -p /app
RUN npm install -g create-react-app
RUN create-react-app test-admin
RUN cd test-admin/
RUN yarn add react-admin ra-data-json-server prop-types

# RUN npm install express
# RUN npm install elastic-apm-node

EXPOSE 3000
CMD [ "yarn", "start" ]
