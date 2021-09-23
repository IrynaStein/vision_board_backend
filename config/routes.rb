Rails.application.routes.draw do
  resources :users, only: [:create, :destroy, :update]
  resources :boards, only: [:create, :destroy, :update]
  
  # get '/layout', to: 'boards#layouts'
  get '/stickers', to: 'assets#stickers_index'
  get '/profile', to: 'users#show'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
