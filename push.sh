git push -f origin cris
git push -f heroku cris:master

heroku run rake db:migrate
