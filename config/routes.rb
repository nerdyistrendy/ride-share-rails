Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root to: 'homepages#index'
  resources :homepages, only: [:index]
  resources :passengers do
    resources :trips, only: [:create]
  end
  resources :drivers
  resources :trips, except: [:create]


end
