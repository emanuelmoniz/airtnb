# AIRTNT

1st project in Ruby on Rails done by 4 young developers. Typical marketplace where you can book toilets and put your own toilets on the website. Booking system and review system included.

You can visit it on: https://airtnb.herokuapp.com

## Table of Contents

* [Getting started](#getting-started)
* [Authors](#authors)

## Getting Started

#### To get this platform working on your localhost, do the following:

* After cloning the project:

```
#TERMINAL (put the following commmands):
bundle install
Yarn instal
rails db: create
rails db: migrate
rails db:seed
#.ENV file (put your claudinary key and your Mapbox api key there)
CLOUDINARY_URL= ************************************
MAPBOX_API_KEY= ************************************
#More
Install sidekiq (see instructions )
#TERMINAL(put the following commmands):
sidekiq
#TERMINAL (another tab):
rails s
```

* After this, you can open the app in your local server: http://localhost:3000/

#### If you want to see the app working without any job, you can visit: https://airtnb.herokuapp.com (feel free to sign up and add seeds :)  )


### Prerequisites

1. Text Editor
2. Package manager (homebrew on OSX, Aptitude on Ubunto)
3. Git
4. Ruby
5. Rails

## Authors

App developed by:

* Emanuel Moniz (https://github.com/emanuelmoniz/)
* Romain Aubert (https://github.com/yourcontact)
* João Costa (https://github.com/joaofrancosta)
* Rui Magalhães (https://github.com/RuiSMagalhaes)

