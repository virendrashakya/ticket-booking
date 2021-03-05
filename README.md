# Dependencies used
  * Database used : postgres (PostgreSQL) 13.2
  * Rails veresion used: Rails 6.1.3
  * Ruby version used:  ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [arm64-darwin20]
  * Node version installed for webpacker: v15.10.0
  
# Steps to Setup Application

  * Make Sure you have all the dependencies installed on your loacal machine
  * Take a pull of this repositery
  * Navigate to project reposotry on local machine terminal
  * Run bundle install in root directory of application
  * Run "rails db:setup"
      > this will create schema
      > run migration
      > run seeds.rb
      > 
  * after this write "rasils s" on root directory on terminal
  * The application will boot on 3000 port by default

 # Access the application
  * [Login] For end user: http://localhost:3000/users/sign_in
        > email: 'test@test.com'
        > password: '123456'
  * [Login] For admin user: http://localhost:3000/admin/sign_in
        > email: 'admin@promobi.com'
        > password: '123456'
        
 >>>>> Now you can navigate the application
