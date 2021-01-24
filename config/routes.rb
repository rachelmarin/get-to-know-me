Rails.application.routes.draw do
  
  root(to: "static#home")

  resources :profiles, only: [:index, :show, :new, :create]

end
