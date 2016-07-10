Rails.application.routes.draw do

  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks", :registrations_controller => "registrations_controller"}
  root 'bikes#index'
  resources :users

  resources :bikes do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end



end
