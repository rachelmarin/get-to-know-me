Rails.application.routes.draw do
  
  root(to: "static#home")
  
  resources :birthstones

  resources :profiles

end
