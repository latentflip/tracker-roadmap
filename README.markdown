## Tracker Roadmap

Tracker Roadmap is a small utility application that turns your Pivotal Tracker release stories into a high level roadmap.

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

## Preview

!http://content.screencast.com/users/ianterrell/folders/Jing/media/e0f62aef-3290-4232-874a-c9e3d653a116/00000341.png!