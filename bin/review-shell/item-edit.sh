git checkout -b edit_branch master
cp ~/Desktop/furima/app/controllers/items_controller.rb ~/Desktop/review/app/controllers/
cp ~/Desktop/furima/app/views/items/edit.html.erb ~/Desktop/review/app/views/items/
git add .
git commit -m 'edit_test'
git push --set-upstream origin edit_branch