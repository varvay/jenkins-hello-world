FROM node:18.12-alpine3.15
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm i
COPY . .
CMD ["npm", "test"]
