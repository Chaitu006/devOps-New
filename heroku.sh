#!/bin/bash
export HEROKU_API_KEY=$HEROKU_API_KEY
heroku create
heroku container:push web
heroku container:release web
heroku open