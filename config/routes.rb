Rails.application.routes.draw do
  resources :people
  resources :relative_time_spaces
  get 'welcome/index'

  resources :things
  resources :peoples
  resources :places
 
  root 'welcome#index'
end
