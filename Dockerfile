# Small nginx image that serves the repo root (index.html, style.css)
FROM nginx:stable-alpine

# Remove default nginx content (optional) and copy project files
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
