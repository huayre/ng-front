FROM node:16.17.0
WORKDIR /app
COPY ./app /app
EXPOSE 4200
RUN npm install -g @angular/cli@14.1.3
