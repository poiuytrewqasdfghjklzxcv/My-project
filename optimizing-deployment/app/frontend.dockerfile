# Frontend Dockerfile
FROM node:18-alpine AS build
WORKDIR /app
COPY public /app/public
COPY package.json /app
RUN npm install && npm run build

FROM nginx:alpine
COPY --from=build /app/public /usr/share/nginx/html
EXPOSE 80
