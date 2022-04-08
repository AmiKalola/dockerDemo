FROM nginx:alpine
COPY index.html /usr/share/nginx/html
WORKDIR /apps
HEALTHCHECK CMD curl --fail http://localhost:8004/ || exit 1
