Rails.application.routes.draw do

  post '/users_search', to: 'users#search' 
  get 'home/report_top'
  get 'home/top'
  resources :users
  resources :et_reports
  resources :ee_reports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
