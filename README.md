# The NeighborHood API 

The NeighborHood is a platform for finding and building local communities. People use NeighborHood to meet new people, learn new things, find support, get out of their comfort zones, and pursue their passions, together.

The NeighborHood emulates the experience of MeetUp yet is more geocentric and its communication is depended on SMS.

This is a Ruby on Rails API created using ActiveRecord.
Ruby version 2.6.1

## How to Install The NeighborHood API
1. Use your terminal to navigate into the place where you want to clone The NeighborHood directory and git clone the url.
2. In the project directory, you can run:
      #`bundle install` 
   This will install the necessary gems needed to run the backend.
3. Run command `rails db:migrate && rails db:seed` in order to set up the tables and the necessary seeded files.
4. Run `rails s` and copy the url in your terminal (more than likely localhost:3000) and open up your browser using the url in order to having a running server that The Neighborhood can make requests to.

## How to Use TheNeighborHood API
The NeighborHood API is needed in order to accept HTTP requests from it's frontend The NeighborHood. This allows users to:
* Create, read, and update their accounts with the help of JavaScript Web Tokens and Bcrypt.
* Uploading Pictures through Active Storage
* Have access to seeded produce and their categories. 

## More About The App
The NeighborHood API requires ActiveRecord, ActiveStorage and gems such as CORS, JWT, and Bcrypt.

### License
This project is licensed under the Learn.co Educational Content License. Please read `LICENSE.md` location in the directory or click on the following link (http://learn.co/content-license) for further details.
