Rails.application.routes.draw do
  get 'feed/personal'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :comments
  get 'feed/personal' 
	root to: redirect('/ideas')
	resources :ideas do
		resources :reactions, only: :create

	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
