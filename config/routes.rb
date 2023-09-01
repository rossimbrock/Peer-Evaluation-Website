#Edited By: Charles Kluznik
#Added routes for new_member and submit_member
#Date: 12/04/2022
Rails.application.routes.draw do
  resources :evaluations
  root 'home#index'  
  resources :home
  resources :teams
  resources :courses
  resources :admins
  resources :students
  resources :project_evaluations
  resources :tech_task_evaluations
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get 'teams/:id/new_member' => 'teams#new_member', :as => 'new_member' #get route for new_member page
  post 'teams/:id/submit_member' => 'teams#submit_member', :as => 'submit_member' #post route for submitting new_member form
end
