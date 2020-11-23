git checkout -b user_branch master
cp ~/Desktop/furima/app/models/user.rb ~/Desktop/review/app/models/
cp ~/Desktop/furima/app/views/devise/registrations/new.html.erb ~/Desktop/review/app/views/devise/registrations/
mkdir ~/Desktop/review/app/views/devise/sessions
cp ~/Desktop/furima/app/views/devise/sessions/new.html.erb ~/Desktop/review/app/views/devise/sessions/
git add .
git commit -m 'user_test'
git push --set-upstream origin user_branch