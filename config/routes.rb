Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root 'posts#index'
  resources :users,     only: [:show, :index, :edit, :update]
  resources :items
  resources :addresses, only: [:edit, :update]
  resources :cards, only: [:create, :show, :edit] do
    collection do
      post 'show', to: 'card#show'
      post 'delete', to: 'card#delete'
    end
  end  

end
