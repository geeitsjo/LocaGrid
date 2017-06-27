# README

This README would normally document whatever steps are necessary to get the application up and running.

Running the application:
You will need to install ruby, and rails to be able to run this application.

Instructions:
1.) Using your computer terminal, go to the directory where locagrid is stored
	cd /../locagrid 

2.) Once you're in the locagrid directory run
	rails server

3.) Open a browser and run the code below to access the website 
	http://localhost:3000/ 

Since you have a copy of the database the app should run properly but if anything fails
run:
	bundle (updating the gem file dependencies)
	rails db:migrate (pushing the schema)
	rails server (run the server)

Implementations that need to be enhanced:
Security - The URL should create random user id instead of consecutive numbers
		 - Santization for user input
		 - Logic in coding should be in the controller instead of the html file
		 - When users put in a comment it should be able to and delete their comment
		 	(I have added this functionality but I cannot get the controller to identify the current user because of how the database is set up)
		 - Fix the dashboard for the admin user 

Implementations that still need to be added: 
		 -	Search function through location, themes, and other fields in the schema
		 -	OpenId Connect sign-in so users can use Instagram or Facebook
		 -  Google map API so locations are absolute and accurate
		 -  Emotion map of city and museum or art gallery - using the data of emotion we create an 	emotion man
		 - Follow other users functionality

Ruby version: 5.0.3
Database creation: Initially we used sqllite3 and then migrated our database to postgresql 
Code management: Github
Deploy platform: Heroku

Library:
We used Bootstrap to have a responsive webapp, no other libraries were used - we created all the CSS styling and js calls.

Dependencies used: 
gem 'carrierwave' - to support photo uploads in the database
gem 'devise' - to have users and admins 
We customised the code to fit our scope, most of the HTTP interface was implemented by the gem files but we implemented the consumation of data
and used the data to visualise files for our users. 

--Helper on gems
gem 'mustermann' - for deploying on heroku 
gem 'sinatra', github: 'sinatra' - for deploying on heroku
gem 'rack-protection' - for deploying on heroku
gem 'pg' - postgresql gem
gem 'taps' - migration gem helper 
	-Since our database used to be sqlite we migrate our database to postgresql
* The rest of the gem file are default gems that Ruby on Rails
rendered for us. We didn't take it out as we were unsure of the implications it would have in our project.
