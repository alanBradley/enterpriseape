Rails.application.routes.draw do
  
  resources :employees

  resources :companies do
    collection { post :import}
  end
  

  devise_for :users
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/faq'
  get 'welcome/pricing'
  get 'welcome/features'

  resources :invoices do
    # blocked the method call index as will never list out purchases without connecting it to the invoice
    resources :purchases, except: [:index], controller: 'invoices/purchases'
  end
  
  
  root to: 'welcome#index'
  
end
