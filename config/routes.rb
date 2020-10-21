Rails.application.routes.draw do
  get 'search_engine/index', to: 'search_engine#index', as: 'search_engine_index'
  get 'search_engine/ethnoidiogloss', to: 'search_engine#ethnoidiogloss', as: 'search_engine_ethnoidiogloss'
  get 'search_engine/concordance', to: 'search_engine#concordance', as: 'search_engine_concordance'
  get 'search_engine/frequency_vocabulary', to: 'search_engine#frequency_vocabulary', as: 'search_engine_frequency_vocabulary'
  get 'search_engine/grammar_dictionaries', to: 'search_engine#grammar_dictionaries', as: 'search_engine_dictionaries'
  
  # get the authentification block
  resources :users, only: [:new, :create]  
  get 'login', to: 'sessions#new', as: 'signup'
  post 'login', to: 'sessions#create'  
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  get 'logout', to: 'sessions#destroy'
  
  # get 'welcome/testpage'
  get 'welcome/index'
  root 'welcome#index'
  

  resources :multimedia
  resources :comments
  resources :ethnoidioglosses
  resources :grammar_dictionaries
  resources :frequency_vocabularies
  resources :concordances
  resources :books
  resources :authors
  resources :notebooks
  resources :users
  resources :roles
  resources :sessions, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
