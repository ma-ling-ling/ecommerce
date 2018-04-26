Rails.application.routes.draw do
  # get 'orders/index'

  get 'my_orders' => 'orders#my_orders'

  post 'add_to_cart' => 'cart#add_to_cart'
  post 'order_complete' => 'cart#order_complete'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'
  delete 'cancel_checkout' => 'cart#cancel_checkout'

  delete 'delete_line_item' => 'cart#delete_line_item'

  devise_for :users
  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  resources :categories
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
