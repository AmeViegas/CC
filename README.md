# README

* Ruby version: 2.3.1
* Rails version: 5
* SQLite3

**To run application:**  
1) install Ruby on your machine, if you do not have it by typing in the command-line:    
    * _command:_ gem install rails 
2) set up the DB - it will be SQLite. This db is available on mac's but may need to be installed on other OS 
    * _command:_ rake db:migrate 
3) if you wish test data to be populated, run:      
    * _command:_ rake db:seed 
4) install all the gems by running:     
    * _command:_ bundle install
5) to run the rails server (http://localhost:3000)     
    * _command:_ rails s 
    
**Requirements provided**
* Add a lead (name, phone number),
* Log a call,
* Schedule an appointment,
* Convert lead to account
* With bonus points for:
    * Updating the phone number,
    * Using a date-picker for the appointment.
  
