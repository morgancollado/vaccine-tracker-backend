Rails.application.routes.draw do
  resources :records
  resources :providers
  resources :patients

  post 'authenticate', to: 'providers#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
