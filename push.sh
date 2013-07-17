for SERVER in origin heroku; do
  git push -f $SERVER HEAD:cris
done

heroku run rake db:migrate
