Rails.application.routes.draw do
  get 'home/index'

  # devise_for :users
  resources :videos

  # get '/auth/:provider/callback', to: 'sessions#create'
	# get '/auth/failure', to: 'sessions#fail'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }

  root "home#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
