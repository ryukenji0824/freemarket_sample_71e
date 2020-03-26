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
  resources :items do
    resources :purchase, only: [:index] do
      collection do
        get 'index', to: 'purchase#index'
        post 'pay', to: 'purchase#pay'
        get 'done', to: 'purchase#done'
      end
    end
    resources :comments, only: :create
  end
  resources :addresses, only: [:edit, :update]
  resources :cards, only: [:new, :show, :destroy] do
    collection do
      post 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
    end
  end  
end
