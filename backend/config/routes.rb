Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :pets, :users, :doctors, :user_pets, :appointments, :playdates

post "/login", to: "auth#log_in"

end
