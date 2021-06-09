# chat_app

# Golang
cd api

docker build -t my-golang-app .

docker run -d -p 8080:8080 --name my-running-app my-golang-app 
