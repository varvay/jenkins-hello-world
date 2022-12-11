FROM node:18.12-alpine3.15 as buildstage
ENV NODE_ENV=production
WORKDIR /app
COPY . .
RUN npm i --production
RUN npm run build

FROM node:18.12-alpine3.15
ENV NODE_ENV production
WORKDIR /app
COPY --from=buildstage app/build build/
CMD ["npx", "serve", "-s", "build"]
