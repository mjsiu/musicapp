Rails.application.routes.draw do

  resources :users, only: [:new, :show, :create]
  resource :session, only: [:create, :new, :destroy]

  resources :bands

  resources :albums, only: [:new, :create, :edit, :show, :update, :destroy] do
    resources :track, only: [:new]
  end
  resources :tracks, only: [:new, :create, :edit, :show, :update, :destroy] do
    resources :albums, only: [:new]
  end


   root to: redirect("/users")
end
