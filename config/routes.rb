Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  resources :users, only: :show do
    resources :tasks, only: [:create, :destroy]
  end
  get 'welcome/index'
  root to: "welcome#index"
end
