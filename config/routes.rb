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
  get 'signup' => 'public/homes#signup', as: 'signup'
  get 'login' => 'public/homes#login', as: 'login'
  
  #一般ユーザー
  scope module: :public do
    resources :users
    get '/users/:id/unsubscribe' => 'users#unsubscribe', as: 'users_unsubscribe'
    patch '/users/:id/withdraw' => 'users#withdraw', as: 'users_withdraw'
    resources :shops
  end
  
  # 店舗オーナー
  namespace :owner do
    resources :shops
    get '/shops/:id/unsubscribe' => 'shops#unsubscribe', as: 'shops_unsubscribe'
    patch '/shops/:id/withdraw' => 'shops#withdraw', as: 'shops_withdraw'
  end
  
  # サイト管理者
  namespace :admin do
    resources :users
    resources :shops
  end
  
end
