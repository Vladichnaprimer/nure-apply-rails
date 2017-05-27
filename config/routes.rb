Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'registrations'
   }
  resources :rules
  get '/rules-view', to: 'rules#index_for_users'
  get '/rules-schooler', to: 'rules#schooler_rule', as: :schooler
  get '/rules-college', to: 'rules#college_rule', as: :college
  get '/rules-bachelor', to: 'rules#bachelor_rule', as: :bachelor
  get '/rules-master', to: 'rules#master_rule', as: :master
  get '/rules-foreign', to: 'rules#foreign_rule', as: :foreign

  resources :news

  get '/last-news', to: 'news#users_news', as: :users_news

  resources :terms
  get '/common-terms', to: 'terms#users_term', as: :users_term
  root 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/structure', to: 'static_pages#structure'

  resources :contacts, only: [:new, :create]

end
