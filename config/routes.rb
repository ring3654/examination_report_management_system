Rails.application.routes.draw do

  get 'unapproved_reports/index'
  get 'unapproved_reports/show'
  get 'welcome/login'
  post 'welcome/check'
  get 'welcome/destroy'
  post '/ee_searchs', to: 'ee_report_searchs#search'
  post '/et_searchs', to: 'et_report_searchs#search'
  get 'home/retrieval_top'
  post '/users_search', to: 'users#search' 
  get 'home/report_top'
  get 'home/top'
  resources :ee_report_searchs do
  end
  resources :et_report_searchs do
  end
  resources :users do
    member do
      get :copy
    end
  end
  resources :et_reports do
    member do
      get :copy
    end
    collection do
      post :output
    end
  end
  resources :ee_reports do
    member do
      get :copy
    end
    collection do
      post :output
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
