FROM node:argon

# Create app directory
RUN mkdir -p /home/ubuntu/vinoth/node/example-nodejs-app-with-docker
WORKDIR /home/ubuntu/vinoth/node/example-nodejs-app-with-docker

# Install app dependencies
COPY package.json /home/ubuntu/vinoth/node/example-nodejs-app-with-docker
RUN npm install

# Bundle app source
COPY . /home/ubuntu/vinoth/node/example-nodejs-app-with-docker

EXPOSE 8080
CMD [ "npm", "start" ]
