Rails.application.routes.draw do
  resources :password_strength, only: [:index, :new, :create]
end
