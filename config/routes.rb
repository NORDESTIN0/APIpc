Rails.application.routes.draw do
    root to: 'pedidos#index'
    resources :pedidos , only: [:index, :create, :destroy]
  end
