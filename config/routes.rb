 Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :events
  {
     sessions: 'users/sessions',
     registrations: 'users/registrations',
     delete: 'sessions/destroy'
   }
  get 'event/index'
  root to: "events#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
