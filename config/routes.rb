Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'registrations'
   }
  resources :rules
  resources :terms
  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'

end
