FROM node:18.13-alpine3.17
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . . 
EXPOSE 8080
CMD ["npm","start"]
