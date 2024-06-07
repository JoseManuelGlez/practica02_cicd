FROM node:14
WORKDIR /app
COPY *.json ./
RUN npm install
RUN npm install -g mocha
COPY . .
EXPOSE 3000
CMD [ "node", "test.js"]