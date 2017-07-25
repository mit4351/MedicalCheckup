Rails.application.routes.draw do
  resources :medicals do
    resources :examinees, only:[:create, :destroy, :show, :edit, :update]
  end
  resources :inspectionitems
  resources :hospitals
  resources :offices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :edit, :create, :update]
  resources :sessions, only: [:new, :create, :destroy]

  match 'signup', to: 'users#new', via: 'get'
  match 'signin', to: 'sessions#new', via: 'get'
  match 'signout', to: 'sessions#destroy', via: 'delete'

  root 'sessions#new'

end
