git checkout -b show_branch master
cp ~/Desktop/furima/app/controllers/items_controller.rb ~/Desktop/review/app/controllers/
cp ~/Desktop/furima/app/views/items/show.html.erb  ~/Desktop/review/app/views/items/
git add .
git commit -m 'show_test'
git push --set-upstream origin show_branch