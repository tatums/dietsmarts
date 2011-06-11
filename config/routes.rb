Dietsmarts1::Application.routes.draw do
  resources :food_categories
  resources :users
  resources :categories
  resources :comments

  resources :foods 
  
  resources :diets do
    resources :comments    
  end
  
  resources :diet_foods do
    resources :upvotes
    resources :downvotes
    resources :comments
  end
  
  match "/about" => "home#about", :as => :about  
  match "login" => "sessions#new", :as => :login 
  
  #Omni Auth Login Stuff
  match "/auth/:provider/callback" => "sessions#create"  
  match "/signout" => "sessions#destroy", :as => :signout  


   root :to => "diets#index"
end
