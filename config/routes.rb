Rails.application.routes.draw do

  resources :news
  devise_for :users, controllers: {
      registrations: 'registrations'
   }
  resources :rules
  get '/rules-view', to: 'rules#index_for_users'
  get '/rules-schooler', to: 'rules#schooler_rule'
  get '/rules-college', to: 'rules#college_rule'
  get '/rules-bachelor', to: 'rules#bachelor_rule'
  get '/rules-master', to: 'rules#master_rule'
  get '/rules-foreign', to: 'rules#foreign_rule'

  resources :terms
  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/structure', to: 'static_pages#structure'

end
