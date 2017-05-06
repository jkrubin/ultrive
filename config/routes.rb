Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :products
  get 'boilerplate/header'

  get 'boilerplate/footer'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'myCart', :to => 'carts#index', as: "mycart"

  get 'shop', :to => 'products#index', as: "shop"

  resources :microposts
  resources :users
  	root 'static_pages#home'
	#root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
