Rails.application.routes.draw do
  
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
  
  root to: 'public/homes#top'
  get 'about' => 'public/homes#about'
  
  #一般ユーザー
  scope module: :public do
    resources :users
    get '/users/:id/unsubscribe' => 'users#unsubscribe', as: 'users_unsubscribe'
    patch '/users/:id/withdraw' => 'users#withdraw', as: 'users_withdraw'
  end
  
end
