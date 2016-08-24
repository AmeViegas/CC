Rails.application.routes.draw do

  resources :customers do
    resources :appointments, only: [:new, :create]
    resources :call_logs, only: [:new, :create]
  end

  root to: 'customers#index'
end
