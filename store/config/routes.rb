Rails.application.routes.draw do
  get '/usuarios', to: 'usuarios#index'
  get '/usuarios/new', to: 'usuarios#new' 
  post '/usuarios', to: 'usuarios#create'
  get '/usuario/:id', to: 'usuarios#show', as: 'usuario'
  get '/usuarios/:id/edit', to: 'usuarios#edit', as: 'edit_usuario'
  patch '/usuario/:id', to:'usuarios#update'
  put '/usuario/:id', to:'usuarios#update'
  delete '/usuario/:id', to: 'usuarios#delete'
  #resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
