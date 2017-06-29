# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root 'hello#index'

  #TODO
  #get '/bio', to: 'hello#bio'
  #get '/blog', to: 'hello#blog'
  get '/resume', to: 'hello#resume'
  get '/contact', to: 'messages#new'
  post '/contact', to: 'messages#new'

  #TODO
  #resources :jobs

  resources :messages
end
