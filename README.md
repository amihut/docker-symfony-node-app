# POC - Running a symfony application inside containers

## Build and start the containers
```
docker-compose up -d --build

or 

./build.sh
```

## Access the site on
```http://localhost:8080/```

## Create service terminal
```
docker exec -it php-service bash
docker exec -it mysql8-container bash
```

## Run a command at service level
```
docker-compose run --rm node-service yarn install
docker-compose run --rm php-service php bin/console doctrine:database:create
docker-compose run --rm php-service php bin/console doctrine:migrations:diff
```