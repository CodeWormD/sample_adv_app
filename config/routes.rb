Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help' #help_path and help_url
  get '/about', to: 'static_pages#about' #about_path and about_url
  get '/contact', to: 'static_pages#contact'

  #users
  get '/signup', to: 'users#new'
  resources :users
end

