Rails.application.routes.draw do
  root "trips#index"

  devise_for :users


  resources :trips do
    resources :locations
  end

  resources :locations do
      resources :addresses
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
