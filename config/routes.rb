Rails.application.routes.draw do
  get "projects/index"
  devise_for :users
  resources :dashboard, only: [ :index ]
  get "up" => "rails/health#show", as: :rails_health_check
  root "home#index"
end
