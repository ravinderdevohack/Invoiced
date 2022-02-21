Rails.application.routes.draw do
  namespace :v1 do 
    resources :accounts
    resources :organizations
    resources :contacts
    resources :sessions
  end

  root 'v1/contacts#index'
end
