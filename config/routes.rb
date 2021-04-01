Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/" => "users#index"
  post "users/create", controller: "users", action: 'create'
  get "menus" => "menus#index"
  post "menus/add_cart", controller: "menus", action: 'add_cart'
  post "menus/add_order", controller: "menus", action: 'add_order'


end
