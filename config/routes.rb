Rails.application.routes.draw do
  resources :albums do
    resources :photos
  end
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  root to: 'main#index'
end
