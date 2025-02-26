# FROM nginx:latest

# COPY nginx.conf /etc/nginx/nginx.conf

# EXPOSE 80 443

# CMD ["nginx", "-g", "daemon off;"]

# Build stage
FROM node:22-alpine AS build

WORKDIR /app
COPY ./to-do-app-web/package*.json ./
RUN npm install -g @angular/cli
RUN npm install

COPY ./to-do-app-web ./
RUN ng build --configuration=production --base-href /todo-app

# Serve stage with Nginx
FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf 
COPY --from=build /app/dist/to-do-app-web/browser /usr/share/nginx/html/todo-app

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

