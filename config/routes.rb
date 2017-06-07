Rails.application.routes.draw do
  get 'users/show'
  post 'sessions' => 'sessions'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users, :controllers => { registrations: 'registrations' }
  
  # devise_scope :user do
  #   # get "/some/route" => "some_devise_controller"

  # end

  devise_for :users, :path => '', :controllers => {:sessions => 'devise/sessions', :registrations => 'devise/registrations'} 

  resources :comments
  resources :users
  root to: redirect('/ideas')
  resources :ideas do
    resources :reactions, only: :create

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# AbstractController::ActionNotFound (Could not find devise mapping for path "/sessions".
# This may happen for two reasons:

# 1) You forgot to wrap your route inside the scope block. For example:

#   devise_scope :user do
#     get "/some/route" => "some_devise_controller"
#   end

# 2) You are testing a Devise controller bypassing the router.
#    If so, you can explicitly tell Devise which mapping to use:

#    @request.env["devise.mapping"] = Devise.mappings[:user]

# ):

