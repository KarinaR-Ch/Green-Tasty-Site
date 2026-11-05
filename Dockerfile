FROM nginxinc/nginx-unprivileged:1.25-alpine3.18-slim

COPY index.html /usr/share/nginx/html/index.html
COPY default.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]
