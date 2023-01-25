class Admin::ShopsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_shop, except: [:index]
  
  def index
    @shops = Shop.page(params[:page]).per(10)
  end

  def show
  end

  def edit
  end
  
  def update
    if @shop.update(shop_params)
      flash[:notice] = "編集の保存に成功しました！"
      redirect_to admin_shop_path(@shop.id)
    else
      flash[:alert] = "編集の保存に失敗しました"
      render :edit
    end
  end
  
  private
  
  def set_shop
    @shop = Shop.find(params[:id])
  end
  
  def shop_params
    params.require(:shop).permit(:name, :email, :address, :phone_number, :opening, :closed, :image, :is_deleted)
  end
end
