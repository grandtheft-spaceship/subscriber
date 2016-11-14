Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :channels

  # resources :channels, except: [:new, :create, :edit, :update, :destroy]
  # resources :channels, only: [:index, :show] do
  #   resources :subscriptions, only: :new
  # end

  # Collection
  # resources :channels do
  #   collection do
  #     get 'search'
  #   end
  # end

  # Member
  # resources :channels do 
  #   member do 
  #     get 'preview'
  #   end
  # end

  # Shallow Routes
  # resources :channels, only: [:index, :show] do
  #   resources :subscriptions, shallow: true
  # end

  # Singular Resource
  # get 'profile', to: 'channels#show'
  # get 'profile', to: :show, controller: 'users'

  # Named Resources
  # post 'subscribe', to: 'subscriptions#create', as: :subscribe
  # delete 'unsubscribe', to: 'subscriptions#destroy', as: :unsubscribe

  # root to: 'channels#index'
  root 'channels#index'
end
