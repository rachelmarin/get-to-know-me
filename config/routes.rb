Rails.application.routes.draw do

  resources :profiles, only: [:index, :show, :new, :create]
  root to: "static#home"

end
