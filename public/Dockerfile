# Step 1
FROM node:12-alpine as build-step
RUN mkdir /frontend
WORKDIR /frontend
COPY package.json /frontend
RUN npm install
COPY . /frontend
RUN npm run build
 
# Stage 2
FROM nginx:1.21.0-alpine
COPY --from=build-step /frontend/build /usr/share/nginx/html
