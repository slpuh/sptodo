### Тестовый проект TODO приложения

#### Установка

```
git clone https://github.com/slpuh/sptodo.git

```
Запуск Docker контейнера

```
cd project_path  
docker-compose up
```
или в фоновом режиме

```
cd project_path  
docker-compose up -d
```
Установка зависимостей
```
cd project_path/www  
composer install
```
#### Запуск phpmyadmin

```
http://localhost:8000
```
MYSQL_USER: user  
MYSQL_PASSWORD: test  
MYSQL_ROOT_PASSWORD: test  

#### Запуск проекта

```
http://localhost:8001
```
MYSQL_DATABASE: todo  
MYSQL_USER: user  
MYSQL_PASSWORD: test  
MYSQL_ROOT_PASSWORD: test  
