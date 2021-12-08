Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "ski_areas#index"
  resources :non_ski_reviews
  resources :non_ski_activities
  resources :ski_area_reviews
  resources :ski_check_ins
  resources :friends
  resources :ski_areas
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
