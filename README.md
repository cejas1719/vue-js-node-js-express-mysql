# Vue.js + Node.js Express + MySQL: CRUD example on same server/port

For more detail, please visit:
> [How to serve/combine Vue App with Express](https://bezkoder.com/serve-vue-app-express/)

> [Vue.js CRUD App with Vue Router & Axios](https://bezkoder.com/vue-js-crud-app/)

> [Build Node.js Rest APIs with Express, Sequelize & MySQL](https://bezkoder.com/node-js-express-sequelize-mysql/)

More Practice:
> [Vue Pagination with Axios and API example](https://bezkoder.com/vue-pagination-axios/)

> [Server side Pagination in Node.js with Sequelize and MySQL](https://bezkoder.com/node-js-sequelize-pagination-mysql/)

> [Deploying/Hosting Node.js app on Heroku with MySQL database](https://bezkoder.com/deploy-node-js-app-heroku-cleardb-mysql/)

Associations:
> [Sequelize Associations: One-to-Many Relationship example](https://bezkoder.com/sequelize-associate-one-to-many/)

> [Sequelize Associations: Many-to-Many Relationship example](https://bezkoder.com/sequelize-associate-many-to-many/)

Fullstack with Node.js Express:
> [Vue.js + Node.js Express + MySQL](https://bezkoder.com/vue-js-node-js-express-mysql-crud-example/)

> [Vue.js + Node.js Express + PostgreSQL](https://bezkoder.com/vue-node-express-postgresql/)

> [Vue.js + Node.js Express + MongoDB](https://bezkoder.com/vue-node-express-mongodb-mevn-crud/)

Fullstack with Spring Boot:
> [Vue.js + Spring Boot](https://bezkoder.com/spring-boot-vue-js-crud-example/)

> [Vue.js + Spring Boot + MongoDB](https://bezkoder.com/spring-boot-vue-mongodb/)

Fullstack with Django:
> [Vue.js + Django](https://bezkoder.com/django-vue-js-rest-framework/)

Serverless with Firebase:
> [Vue Firebase Realtime Database: CRUD example](https://bezkoder.com/vue-firebase-realtime-database/)

> [Vue Firestore CRUD example](https://bezkoder.com/vue-firestore-crud/)

# To install the App locally, follow these steps:

## Install a contenerization tool (docker recommended) 
### For Windows:
1. Download the installer from the [docker webpage](https://docs.docker.com/desktop/install/windows-install/)
2. After complete the download, run the following command: 
```
"Docker Desktop Installer.exe" install
```
### For Mac:
1. Download the installer from the [docker webpage](https://docs.docker.com/desktop/install/mac-install/)
2. After complete the download, run the following commands: 
```
 $ sudo hdiutil attach Docker.dmg
 $ sudo /Volumes/Docker/Docker.app/Contents/MacOS/install
 $ sudo hdiutil detach /Volumes/Docker
```
### For Ubuntu:
1. Download the latest package from [docker webpage](https://docs.docker.com/desktop/install/mac-install/)
2. After complete the download, run the following commands: 
```
 $ sudo apt-get update
 $ sudo apt-get install ./docker-desktop-<version>-<arch>.deb
```

### Download the MySQL image and node image 
You can use the registry of your preference, the default registry is [Docker hub](https://hub.docker.com/)
```
 docker pull mysql latest
 docker pull node:18-alpine
```

### Build the App image
```
 docker build . -t nbcu-website:latest
```

### Run the containers with the following commands 
The DB configuration is located in app/config/db.config.js
```
 # MySQL container
 docker run -p 3306:3306 --name nbcu-mysql -e MYSQL_ROOT_PASSWORD=<DB_PASSWORD> -e MYSQL_DATABASE=<DB_NAME> -d mysql:latest
 # node container
 docker run -p 8080:8080 --name nbcu-website -e DB_HOST=<DB:HOST> -e DB_USERNAME=<DB_USERNAME> -e DB_PASSWORD=<DB_PASSWORD> -e DB_NAME=<DB_NAME> -d nbcu-website:latest
```

### To access the app
Point to the following URL: http://localhost:8080
