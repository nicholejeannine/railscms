Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    resources :albums
    resource :photos, only: [:index, :new, :create]

    get 'photos' => "photos#index"
  end
  root to: 'main#index'
end
