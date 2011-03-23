## Tracker Roadmap

Tracker Roadmap is a small utility application that turns your "Pivotal Tracker":http://www.pivotaltracker.com release stories into a high level roadmap.

### Installation

The app is made to be easily deployed on Heroku.  All configuration options are set using environment variables.

After cloning this repository, you can deploy with this:

* `heroku create <appname>`
* `heroku config:add TRACKER_API_KEY=<your pivotal tracker api key>`
* `heroku config:add TRACKER_PROJECT_ID=<the numeric id of your project>`
* `heroku config:add USERNAME=<username>`
* `heroku config:add PASSWORD=<password>`
* `heroku config:add PRODUCT_NAME=<name of product>` _optional_
* `heroku config:add FOOTER=<footer copy>` _optional_
* `git push heroku master`
