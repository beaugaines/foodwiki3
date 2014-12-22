Rails.application.routes.draw do

  resources :companies do
    resources :products
  end

  resources :products do
    resources :components
  end

  root 'companies#index'
end
