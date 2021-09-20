Rails.application.routes.draw do
  resources :users, only: [:create, :delete, :update, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'

end
