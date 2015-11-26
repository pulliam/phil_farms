# Phil Farms
Weekend Lab on SQL and Ruby

## Your app should track his three separate farms in:

* Rosendale
* Eddyville
* Wappingers Falls

## You should track the following data about each farm:

* Nickname
* Mailing address
* Latitude
* Longitude
* Phone Number
* Name of supervisor
* Crops

## Each farm will have many different crops growing on it at different points throughout the year. 
Your application will track the following info about each crop:

* color
* type (phava beans?)
* quantity of plants
* anticipated harvest date

This data will be persisted to a SQLite3 database.

##Deliverables

Your rustic client should be able to:

* See a page that lists all current farms.
* Create a new farm.
* See a page that lists all current fruit crops for each farm.
* Create a new fruit crop.
* Delete an existing fruit crop - in case of locust plagues or shifting market trends.
* Your application should use ERB to render templates into dynamically created HTML.

## Resolution Approach: 

* Will make 2 tables, one for locations and 1 for Crops.
* Will add a column "location" into Crop Table, that will be linked to the ID of each location entry on Location table.
* Locations table: Id, Name, Nickname, Adress, Lat, Long, Phone number, Supervisor name. 
* Crops table: Id, Name, Color, Type, Quantity, Harvest Date (Early), Location (Connected to Id on locations)
* Create tables on a schema file .sql
* Make a database .db file called farms
* Create server.rb file to control my app, and create config.ru file to run my local server on sinatra. 
* Connect config.ru to server
* Make a class/module on server.rb
* Connect server.rb to Sinatra Base Class
* Connet Database on server.rb
* Make a .sql file called seeds, so I can have some demo entries for testing the apps.
- get (/) MAIN
- get (/locationID) ...
- post (/location) 
- post (/crop)

## Challenge Faced

* Using string interpolation inside a redirect URL. I couldn't get it to work. Then I found out a very nice way on Sinatra docs, and used redirect back in my program. 
