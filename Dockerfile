FROM node:16
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
EXPOSE 9981
CMD ["npm","start"]
