Rails.application.routes.draw do


  root 'pages#index'

  get 'pages/index'

  devise_for :users

  resources :profiles
  resources :appointment_types
  resources :availabilities

  resources :patients do
    resources :treatment_notes
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
