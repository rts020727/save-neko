Rails.application.routes.draw do

  devise_for :shops, controllers: {
    registrations: 'owner/registrations',
    sessions: 'owner/sessions'
  }

  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }

  devise_for :users, controllers: {
    registrations: 'public/registrations',
    sessions: 'public/sessions'
  }
  
  # ゲスト
  devise_scope :user do
    post 'users/guest_sign_in' => 'public/sessions#guest_sign_in'
  end
  
  # 共通画面
  root to: 'public/homes#top'
  get 'about' => 'public/homes#about'
  get 'signup' => 'public/homes#signup', as: 'signup'
  get 'login' => 'public/homes#login', as: 'login'

  #一般ユーザー
  scope module: :public do
    get '/users/:id/mybookmark' => 'users#mybookmark', as: 'users_mybookmark'
    get '/users/:id/myfavorite' => 'users#myfavorite', as: 'users_myfavorite'
    get '/users/:id/unsubscribe' => 'users#unsubscribe', as: 'users_unsubscribe'
    patch '/users/:id/withdraw' => 'users#withdraw', as: 'users_withdraw'
    resources :users, only: [:show, :edit, :update]
    get '/shops/:id/photos' => 'shops#shop_photos', as: 'shop_photos'
    resources :photos, only: [:index, :show] do
      resources :photo_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end
    resources :shops, only: [:index, :show] do
      resource :bookmarks, only: [:create, :destroy]
      resources :cats, only: [:index]
      resources :events, only: [:show]
      resources :shop_comments, only: [:create, :destroy]
    end
    get "search" => "searches#search"
    get "search_form" => "searches#search_form"
  end

  # 店舗オーナー
  namespace :owner do
    resources :shops, only: [:show, :edit, :update]
    get '/shops/:id/unsubscribe' => 'shops#unsubscribe', as: 'shops_unsubscribe'
    patch '/shops/:id/withdraw' => 'shops#withdraw', as: 'shops_withdraw'
    resources :cats
    resources :photos do
      resources :photo_comments, only: [:destroy]
    end
    resources :events
  end

  # サイト管理者
  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update]
    resources :shops, only: [:index, :show, :edit, :update]
  end

end
