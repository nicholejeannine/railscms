Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    resources :albums do
      resources :photos
    end
  end
  root to: 'main#index'
end
