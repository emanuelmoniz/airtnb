# AIRTNT

1st project in Ruby on Rails done by 4 young developers. Typical marketplace where you can book toilets and put your own toilets on the website. Booking system and review system included.

(More in some days)

## Getting Started

1. To get this platform working on your localhost, do the following:

After cloning the project:

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

After this, you can open the app in your local server

2. If you want to see the app working without any job, you can visit: https://airtnt.herokuapp.com (feel free to sign up and add seeds :)  )


### Prerequisites

1. Text Editor
2. Package manager (homebrew on OSX, Aptitude on Ubunto)
3. Git
4. Ruby
5. Rails





## Still on construction from now on

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
