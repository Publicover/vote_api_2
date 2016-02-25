# Setting up a voting API

This was written in Ruby 2.3.0.

### git clone

Copy this depository from Github by using the **git clone** command in Terminal.

By then running **bundle install**, you'll get all required gems from the Gemfile.

###bin/rake db:migrate

**bin/rake db:migrate** will get your database up and running. Entering the URL
localhost:3000 in your browser address line will let you see what the app is
doing.

You can add new candidates, voters or votes by appending "create" to the URL
after first adding the class to the URL. For example,
http://localhost:3000/candidate/create
will create a new candidate and save it to the database.

Similarly, you can view every instance in the database with **index**.

###bin/rake test

Run the test suite by using the **bin/rake test** command in Terminal.

#Estimate

I estimate the remainder of the project will take seven or eight hours. 
