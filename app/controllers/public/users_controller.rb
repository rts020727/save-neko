class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def unsubscribe
    @user = User.find(params[:id])
  end
  
  def withdraw
    @user = User.find(params[:id])
    @user.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

end
