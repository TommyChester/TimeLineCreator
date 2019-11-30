Rails.application.routes.draw do
  resources :relative_time_spaces
  get 'welcome/index'

  resources :things
  resources :peoples
  resources :places
  resources :relative_time_spaces
 
  root 'welcome#index'
end
