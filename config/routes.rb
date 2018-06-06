Rails.application.routes.draw do

  get 'restaurants', to:"restaurants#index", as: :index
  get 'restaurants/new', to:"restaurants#new"
  post 'restaurants', to:"restaurants#create", as: :restaurants
  get 'restaurants/:id', to:"restaurants#show", as: :restaurant

  # delete 'restaurants/:id', to:"restaurants#delete", as: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "restaurants/:restaurant_id/reviews", to: "reviews#index"
  get 'restaurants/:restaurant_id/reviews/new', to:"reviews#new", as: :n_review
  post 'restaurants/:restaurant_id/reviews', to:"reviews#create", as: :new_review
  get "reviews/:id", to: "reviews#show", as: :review




end
