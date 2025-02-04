FROM node:18.13-alpine3.17
WORKDIR /app
COPY package*.json ./
RUN npm install pm2 -g
RUN npm install
COPY . . 
EXPOSE 8080
CMD ["npm","start"]
