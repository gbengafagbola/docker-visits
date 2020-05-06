# specify a base image
FROM node:alpine 

WORKDIR '/app'

# making copy of the files to the container
COPY package.json .

#Install dependencies
RUN apk add nodejs

RUN apk add npm

RUN npm i -g nodemon

RUN npm install 

COPY . .

EXPOSE 8082
#Default comand
CMD ["npm", "start", "production"]