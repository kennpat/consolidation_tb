Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :corporations do
    resources :trial_balances
  end

end
