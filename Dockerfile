FROM nginx:1.17.1-alpine
COPY /dist/angular-docker /usr/share/nginx/html

EXPOSE 3000