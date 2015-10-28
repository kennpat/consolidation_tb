Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :corporations do
    resources :trial_balances, only: [:new, :create, :index]
  end

  resources :trial_balances, only: [:show, :update, :edit, :destroy]

end
