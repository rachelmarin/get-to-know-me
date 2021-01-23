Rails.application.routes.draw do

  resources :profiles
  root to: "static#home"

end
