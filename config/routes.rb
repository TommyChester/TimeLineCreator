Rails.application.routes.draw do
  resources :eventiods
  resources :great_celestial_relationships
  resources :celestial_bodies
  resources :events
  resources :people
  resources :relative_time_spaces
  get 'welcome/index'

  resources :things
  resources :peoples
  resources :places
 
  root 'welcome#index'
end
