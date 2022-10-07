Rails.application.routes.draw do
  devise_for :admin_users
  devise_scope :admin_user do  
    get '/admin_users/sign_out' => 'devise/sessions#destroy'     
 end
root 'home#index'
# root 'pages#home'
get 'about', to: 'pages#about'
get 'contact', to: 'pages#contact'
get 'careers', to: 'pages#careers'

resources :articles

end
