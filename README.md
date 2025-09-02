###

Django updgraded to 5.2

###
MySQL upgraded to 8.4

###
Create the tables:
```
docker compose exec web python manage.py migrate
```
Import the existings data:
```
docker compose exec -T db mysql -u user -ppassword mydatabase < vehicle.sql
```
Restart docker:
```
docker compose restart
```
You can create admin:
```
docker compose exec web python manage.py createsuperuser
```
