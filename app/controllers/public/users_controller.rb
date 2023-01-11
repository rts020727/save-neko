class Public::UsersController < ApplicationController
  before_action :set_user
  
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
    # いいねの一覧表示
    favorites = Favorite.where(user_id: current_user).pluck(:photo_id)
    @favorite_photos = Photo.find(favorites)
    # ブックマークの一覧表示
    bookmarks = Bookmark.where(user_id: current_user).pluck(:shop_id)
    @bookmark_shops = Shop.find(bookmarks)
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
  
  def user_params
    params.require(:user).permit(:name, :email, :image)
  end

end
