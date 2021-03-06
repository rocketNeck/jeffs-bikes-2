Rails.application.routes.draw do

  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks", registrations: 'registrations'}
  root 'bikes#index'
  resources :users

  resources :bikes do
    resources :comments, only: [:create, :destroy, :show, :index]
  end

  get 'tags/:tag', to: 'bikes#index', as: "tag"
end
