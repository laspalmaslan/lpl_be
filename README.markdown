#LPL Gran Canaria [![Build Status](https://travis-ci.org/laspalmaslan/lpl_be.png?branch=add-dashboard-for-web-#6)](https://travis-ci.org/laspalmaslan/lpl_be)
Web site for the event LPL Gran Canaria.
## Instalation

###Install [rvm](https://rvm.io/rvm/install).
###Install ruby 2.0.0 with rvm:
```bash
rvm install 2.0.0
```
###Install postgresql:
```bash
sudo apt-get install postgresql-9.1 libpq-dev
```
###Install phantom.js:

* [Download phantomjs](https://phantomjs.googlecode.com/files/phantomjs-1.9.2-linux-x86_64.tar.bz2)
* `tar jxf path/to/filename.tar.bz2`
* `mv path/to/uncompressed_folder ~/.phantomjs`
* Add this line `export PATH="~/.phantomjs/bin/:$PATH"` to ~/.bash_profile or ~/.bashrc files

###Clone this project
```bash
git clone git@github.com:laspalmaslan/lpl_be.git
```
### Move into the project folder and run setup rails commands:
```bash
cd lpl_be
bundle install
rake db:setup
```

## Test
You can run test whit `rake` command:
```bash
rake
```
or you can see [travis ci service](https://travis-ci.org/laspalmaslan/lpl_be)

## Environment variables 

we use enviroment variables for config services in production.

* AWS_ACCESS_KEY_ID:          amazon s3 credentials.
* AWS_SECRET_ACCESS_KEY:      amazon s3 credentials
* E-PASSWORD:                 email credentials
* E-USERNAME:                 email credentials
* S3_BUCKET_NAME:             amazon s3 bucket name
* SECRET_KEY:                 devise login secret token
