Rails.application.routes.draw do

  get 'unapproved_reports/index'
  get 'unapproved_reports/show'
  get 'welcome/login'
  post 'welcome/check'
  get 'welcome/destroy'
  post '/ee_searchs', to: 'ee_report_searchs#search'
  post '/et_searchs', to: 'et_report_searchs#search'
  get 'et_report_searchs/index'
  get 'et_report_searchs/show'
  get 'ee_report_searchs/index'
  get 'ee_report_searchs/show'
  get 'home/retrieval_top'
  post '/users_search', to: 'users#search' 
  get 'home/report_top'
  get 'home/top'
  resources :users do
    member do
      get :copy
    end
  end
  resources :et_reports
  resources :ee_reports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
