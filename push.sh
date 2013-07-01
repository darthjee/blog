for SERVER in origin heroku; do
  git push $SERVER master
done

heroku run rake db:migrate
