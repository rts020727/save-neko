class Public::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :ensure_guest_user, only: [:edit]

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  def show
    # ブックマークの一覧表示
    bookmarks = Bookmark.where(user_id: current_user).pluck(:shop_id)
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
    @user.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end


  private

  def set_user
    @user = current_user
  end

  def ensure_guest_user
    @user_find = User.find(params[:id])
    if @user_find.name == 'guestuser'
      flash[:notice] = "ゲストユーザーはプロフィール編集画面へ遷移できません"
      redirect_to user_path(current_user)
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
  
end
