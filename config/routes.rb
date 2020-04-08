Rails.application.routes.draw do

    root 'home#top'
	get 'home/about'
	devise_for :users
    resources :books
	resources :users,only: [:show,:index,:create,:edit,:update]
end