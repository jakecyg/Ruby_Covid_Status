Rails.application.routes.draw do
  get 'about/index'
  get 'home/index'
  resources :regions, only: %i[index show]
  resources :about, only: %i[index]

  root to: "home#index"
end
