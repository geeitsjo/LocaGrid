Rails.application.routes.draw do
  get 'users/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :comments
  resources :users
  
  devise_scope :user do 
   root to: redirect('/ideas')
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

  
  resources :ideas do
    resources :reactions, only: :create

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
