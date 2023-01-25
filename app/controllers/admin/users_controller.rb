class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_user, except: [:index]
  
  def index
    @users = User.page(params[:page]).per(10)
  end

  def show
  end

  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user.id)
    else
      render :edit
    end
  end
  
  private
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :is_deleted)
  end
end
