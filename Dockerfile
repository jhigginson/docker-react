FROM node:18-alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
RUN mkdir -p node_modules/.cache && chmod -R 777 node_modules/.cache
COPY . .
RUN npm run build

#each FROM statement is a new phase and the second one doesnt need to be named
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
#default command of nginx container starts nginx for you