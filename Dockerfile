FROM nginx:latest
COPY nginx.conf /etc/nginx/conf.d/custom.conf
COPY .htpasswd /etc/apache2/.htpasswd
COPY .htpasswd /etc/apache2/.htpasswd
