gem install heroku
git remote add heroku git@heroku.com:dxr.git
yes | heroku keys:add
yes | git push --force heroku master