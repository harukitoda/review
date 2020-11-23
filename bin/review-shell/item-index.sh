git checkout -b index_branch master
cp ~/Desktop/furima/app/controllers/items_controller.rb  ~/Desktop/review/app/controllers/
cp ~/Desktop/furima/app/views/items/index.html.erb  ~/Desktop/review/app/views/items/
git add .
git commit -m 'index_test'
git push --set-upstream origin index_branch