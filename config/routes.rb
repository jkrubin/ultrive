Rails.application.routes.draw do
  get 'boilerplate/header'

  get 'boilerplate/footer'

  get 'static_pages/home'

  get 'static_pages/help'

  resources :microposts
  resources :users
  	root 'static_pages#home'
	#root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
