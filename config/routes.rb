Rails.application.routes.draw do

  get 'addresses/index'
  get 'addresses/new'
  get 'addresses/show'
  get 'addresses/edit'
  get 'locations/index'
  get 'locations/new'
  get 'locations/show'
  get 'locations/edit'
  get 'trips/index'
  get 'trips/new'
  get 'trips/show'
  get 'trips/edit'
  devise_for :users
  "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
