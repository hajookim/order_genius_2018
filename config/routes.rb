Rails.application.routes.draw do
  resources :order_menu_items
  resources :customers
  resources :menu_items
  resources :restaurants do
    resources :orders
  end
  root 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
