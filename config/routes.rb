Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root 'posts#index'
  resources :users,     only: [:show, :index, :edit]
  resources :items
  resources :addresses, only: [:edit]
  resources :cards, only: [:new, :edit]

end
