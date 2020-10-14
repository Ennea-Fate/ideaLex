Rails.application.routes.draw do
  get 'search_engine/index', to: 'search_engine#index', as: 'search_engine_index'
  get 'search_engine/ethnoidiogloss', to: 'search_engine#ethnoidiogloss', as: 'search_engine_ethnoidiogloss'
  get 'search_engine/concordance', to: 'search_engine#concordance', as: 'search_engine_concordance'
  get 'search_engine/frequency_vocabulary', to: 'search_engine#frequency_vocabulary', as: 'search_engine_frequency_vocabulary'
  get 'search_engine/grammar_dictionaries', to: 'search_engine#grammar_dictionaries', as: 'search_engine_dictionaries'
  
  
  # get 'welcome/testpage'
  get 'welcome/index'
  root 'welcome#index'
  
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

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
