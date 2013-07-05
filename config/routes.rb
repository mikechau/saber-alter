SaberAlter::Application.routes.draw do
  resources :values


  resources :trucks


  resources :algos

  root :to => 'calculator#index'
  # get 'calculate' :to => 'calculator#calculate'
  post 'create', :to => 'calculator#calculate', as: :create_est
  get 'show/:id', :to => 'calculator#show', as: :show_est

end
