Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:index, :create, :destroy] do
      resources :lists, only: [:create, :update, :destroy]
    end
    resources :lists, only: [:create, :update, :destroy] do
      resources :items, only: [:create, :update]
    end
  end


  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
