Rails.application.routes.draw do
  root :to => 'home#index'
  get 'home/index'
  get 'home/login'
  get 'home/logout'

  get 'search/search'
  post 'search/search'

  get 'browse/browse'
  get 'browse/seriessort'
  get 'browse/viewershipsort'
  get 'browse/ratingsort'
  get 'browse/sharesort'
  get 'browse/datesort'
  get 'browse/networksort'

  get 'browse/search'
  get 'browse/sort'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get "login" => "sessions#new", :as => "login"
  delete 'logout' => "sessions#destroy", :as => "logout"

  resources :sessions
  resources :finales
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
