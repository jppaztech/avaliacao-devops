FROM nginx:alpine
COPY app/index.html /usr/share/nginx/html/index.html
COPY app/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
