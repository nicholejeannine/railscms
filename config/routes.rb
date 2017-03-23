Rails.application.routes.draw do
  resources :albums do
    resources :photos
  end
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  root to: 'main#index'
end
