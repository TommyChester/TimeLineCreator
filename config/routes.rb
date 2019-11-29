Rails.application.routes.draw do
  get 'welcome/index'

  resources :things
  resources :peoples
  resources :places
  resources :times
 
  root 'welcome#index'
end
