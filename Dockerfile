FROM node:18.12-alpine3.15
ENV NODE_ENV production
WORKDIR /app
# COPY package.json ./
# RUN npm i --production
# COPY . .
# CMD ["npm", "run", "build"]
COPY build ./build
CMD ["npx", "serve", "-s", "build"]
