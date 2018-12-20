FROM node:11.1.0-alpine

WORKDIR /usr/src/app
# COPY package*.json ./

RUN mkdir -p /app
RUN npm install -g create-react-app
#RUN create-react-app test-admin
#RUN cd test-admin/
#RUN yarn add react-admin ra-data-json-server prop-types
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
RUN git clone https://github.com/marmelab/react-admin.git

# RUN npm install express
# RUN npm install elastic-apm-node

EXPOSE 3000
#CMD [ "create-react-app", "test-admin" ]
#CMD [ "cd", "test-admin/" ]
#CMD [ "yarn", "add", "react-admin", "ra-data-json-server", "prop-types" ]
#CMD [ "yarn", "start" ]

#CMD [ "cd", "react-admin/" ]
#CMD [ "make", "install" ]
#CMD [ "make", "run-tutorial" ]
CMD [ "bash" ]
