Rails.application.routes.draw do
  resources :users
  resources :et_reports
  resources :ee_reports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
