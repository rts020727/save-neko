Rails.application.routes.draw do
  root to: 'public/homes#top'
  get 'homes/about'
  devise_for :shops, controllers: {
    registrations: 'owner/registrations',
    sessions: 'owner/sessions'
  }
  
  devise_for :admins, controllers: {
    registrations: 'admin/sessions'
  }
  
  devise_for :users, controllers: {
    registrations: 'public/registrations',
    sessions: 'public/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
