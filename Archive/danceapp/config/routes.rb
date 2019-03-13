Rails.application.routes.draw do
  get 'welcome/index'

  resources :dance_classes

  root 'welcome#index'
end
