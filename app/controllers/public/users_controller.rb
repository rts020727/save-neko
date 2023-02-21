class Public::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :ensure_guest_user, only: [:edit]
  before_action :is_matching_login_user

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "編集の保存に成功しました！"
      redirect_to user_path(@user.id)
    else
      flash[:alert] = "編集の保存に失敗しました"
      render :edit
    end
  end

  def show
    # ブックマークの一覧表示
    bookmarks = Bookmark.where(user_id: current_user).pluck(:shop_id)
    # 二次元配列の並び替え
    @bookmark_shops = Shop.find(bookmarks)
    @bookmark_shops = Kaminari.paginate_array(@bookmark_shops).page(params[:page]).per(3)
    # いいねの一覧表示
    favorites = Favorite.where(user_id: current_user).pluck(:photo_id)
    @favorite_photos = Photo.find(favorites)
    @favorite_photos = Kaminari.paginate_array(@favorite_photos).page(params[:page]).per(4)
  end

  def mybookmark
    # ブックマークの一覧表示
    bookmarks = Bookmark.where(user_id: current_user).pluck(:shop_id)
    @bookmark_shops = Shop.find(bookmarks)
    @bookmark_shops = Kaminari.paginate_array(@bookmark_shops).page(params[:page]).per(6)
  end

  def myfavorite
    # いいねの一覧表示
    favorites = Favorite.where(user_id: current_user).pluck(:photo_id)
    @favorite_photos = Photo.find(favorites)
    @favorite_photos = Kaminari.paginate_array(@favorite_photos).page(params[:page]).per(9)
  end

  def unsubscribe
  end

  def withdraw
    if @user.update(is_deleted: true)
      reset_session
      flash[:notice] = "正常に退会しました。ご利用ありがとうございました！"
      redirect_to root_path
    end
  end


  private

  def set_user
    @user = current_user
  end

  def ensure_guest_user
    user_find = User.find(params[:id])
    if user_find.name == 'guestuser'
      flash[:notice] = "ゲストユーザーはプロフィール編集画面へ遷移できません"
      redirect_to user_path(current_user)
    end
  end
  
  # ログインしているユーザー以外の情報へアクセスした場合トップページへ
  def is_matching_login_user
    user_id = params[:id].to_i
    unless user_id == current_user.id
      flash[:notice] = "他のユーザーの情報へは遷移できません"
      redirect_to root_path
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end

end
