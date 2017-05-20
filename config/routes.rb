Rails.application.routes.draw do

  resources :news
  devise_for :users, controllers: {
      registrations: 'registrations'
   }
  resources :rules
  get '/rules-view', to: 'rules#index_for_veiws'
  resources :terms
  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/structure', to: 'static_pages#structure'

end
