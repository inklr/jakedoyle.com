# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root 'hello#index'

  get '/bio', to: 'hello#bio'
  get '/blog', to: 'hello#blog'
  get '/resume', to: 'hello#resume'
  get '/contact', to: 'hello#contact'

  resources :jobs
end
