###

Django updgraded to 5.2

###
MySQL upgraded to 8.4

###
Clone the repository:
```
git clone https://github.com/GGurol/Vehicle-DjangoFullStack.git
cd Vehicle-DjangoFullStack
```
Build it:
```
docker compose up --build -d ( -d deattached mode, for debugging, use without -d parameter )
```
Create the tables:
```
docker compose exec web python manage.py migrate
```
Import the existings data:
```
docker compose exec -T db mysql -u user -ppassword mydatabase < vehicle.sql
```
Restart docker: ( We are using stop followed by start instead of restart to avoid timing issues, as it allows for a cleaner shutdown and startup cycle. )
```
docker compose stop 
docker compose start
```
You can create admin:
```
docker compose exec web python manage.py createsuperuser
```
