# nginx ziehen
FROM nginx:alpine
# Kopiert die Konfigurationsdateien in den Container
COPY nginx.conf /etc/nginx/nginx.conf
# Kopiert das HTML-File in den Container
COPY index.html /usr/share/nginx/html/index.html
# Port
EXPOSE 80
# Starten Sie NGINX
CMD ["nginx", "-g", "daemon off;"]
