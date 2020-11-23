git checkout -b destroy_branch master
cp ~/Desktop/furima/app/controllers/items_controller.rb ~/Desktop/review/app/controllers/
git add .
git commit -m 'destroy_test'
git push --set-upstream origin destroy_branch