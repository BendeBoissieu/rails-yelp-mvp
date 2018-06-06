Rails.application.routes.draw do

  get 'restaurants', to:"restaurants#index", as: :index
  get 'restaurants/new', to:"restaurants#new"
  post 'restaurants', to:"restaurants#create", as: :restaurants
  get 'restaurants/:id', to:"restaurants#show", as: :restaurant
  # delete 'restaurants/:id', to:"restaurants#delete", as: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'reviews/create'
  get 'reviews/new', to:"reviews#new"


end
