Rails.application.routes.draw do
  root 'home#index'

  devise_for :admin_users
  
  post 'admin_user/enable_otp'
  post 'admin_user/disable_otp'

  devise_scope :admin_user do  
    get '/admin_users/sign_out' => 'devise/sessions#destroy'     
 end



# root 'pages#home'
get 'about', to: 'pages#about'
get 'contact', to: 'pages#contact'
get 'careers', to: 'pages#careers'

resources :articles

end
