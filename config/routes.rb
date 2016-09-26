Rails.application.routes.draw do
  
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :newsvilles do
    resources :comments
  end
  root to: 'pages#index'

 
end
