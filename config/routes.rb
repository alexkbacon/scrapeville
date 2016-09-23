Rails.application.routes.draw do
  
  resources :newsvilles
  root to: 'pages#index'
  #root to: 'application#google_news'

 
end
