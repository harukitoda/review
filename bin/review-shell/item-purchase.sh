git checkout -b purchase_branch master
cp ~/Desktop/furima/app/controllers/orders_controller.rb ~/Desktop/review/app/controllers/
cp ~/Desktop/furima/app/javascript/packs/card.js ~/Desktop/review/app/javascript/packs/
cp ~/Desktop/furima/app/models/order_form.rb ~/Desktop/review/app/models/
cp ~/Desktop/furima/app/views/items/show.html.erb ~/Desktop/review/app/views/items/
cp ~/Desktop/furima/app/views/orders/index.html.erb  ~/Desktop/review/app/views/orders/
mkdir ~/Desktop/review/spec/
mkdir ~/Desktop/eview/spec/models/
cp ~/Desktop/furima/spec/models/order_form_spec.rb ~/Desktop/review/spec/models/
git add .
git commit -m 'purchase_test'
git push --set-upstream origin purchase_branch