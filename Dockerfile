#Docker Images start from a base image. The base image should include the platform dependencies 
#required by your application, for example, having the JVM or CLR installed.
FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]