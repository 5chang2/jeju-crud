Rails.application.routes.draw do
  root 'board#index'
  get '/new' => 'board#new'
  post '/create' => 'board#create'
  get '/show/:id' => 'board#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
