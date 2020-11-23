git checkout -b create_branch master
cp ~/Desktop/furima/app/models/item.rb ~/Desktop/review/app/models/
cp ~/Desktop/furima/app/controllers/items_controller.rb ~/Desktop/review/app/controllers/
cp ~/Desktop/furima/app/views/items/new.html.erb ~/Desktop/review/app/views/items/
mkdir ~/Desktop/review/spec/
mkdir ~/Desktop/review/spec/models/
cp ~/Desktop/furima/spec/models/item_spec.rb ~/Desktop/review/spec/models/
git add .
git commit -m 'create_test'
git push --set-upstream origin create_branch