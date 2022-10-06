Rails.application.routes.draw do
root 'home#index'
# root 'pages#home'
get 'about', to: 'pages#about'
get 'contact', to: 'pages#contact'
get 'careers', to: 'pages#careers'

resources :articles

end
