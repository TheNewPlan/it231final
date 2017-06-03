Rails.application.routes.draw do
  root :to => 'home#index'

  get 'home/index'
  get 'home/login'
  get 'home/logout'
  get 'home/user'
  get 'home/saveList'
  get 'home/removeFinales'

  post 'home/login'
  post 'home/index'
  post 'home/user'
  post 'home/saveList'
  post 'home/removeFinales'

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

  resources :finales
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
