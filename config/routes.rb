Rails.application.routes.draw do
  
  root(to: "static#home")

  resources :profiles, except: [:destroy]

end
