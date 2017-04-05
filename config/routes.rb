Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    resources :pages, :albums
    resource :photos, only: [:index, :new, :create]

    get 'photos' => "photos#index"
    get 'cms' => "pages#index", as: 'cms_root'
  end
  root to: 'public#index'
end
