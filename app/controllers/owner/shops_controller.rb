class Owner::ShopsController < ApplicationController
  before_action :authenticate_shop!
  before_action :set_shop
  before_action :is_matching_login_shop
  
  def show
  end

  def edit
  end
  
  def update
    if @shop.update(shop_params)
      flash[:notice] = "編集の保存に成功しました！"
      redirect_to owner_shop_path(@shop)
    else
      flash.now[:alert] = "編集の保存に失敗しました"
      render :edit
    end
  end

  def unsubscribe
  end

  def withdraw
    if @shop.update(is_deleted: true)
      reset_session
      flash[:notice] = "正常に退会しました。ご利用ありがとうございました。"
      redirect_to root_path
    end
  end
  
  
  private
  
  def set_shop
    @shop = Shop.find(params[:id])
  end
  
  # ログインしている店舗ユーザー以外の情報へアクセスした場合トップページへ
  def is_matching_login_shop
    shop_id = params[:id].to_i
    unless shop_id == current_shop.id
      redirect_to root_path
    end
  end
  
  def shop_params
    params.require(:shop).permit(:name, :email, :address, :phone_number, :opening, :closed, :image)
  end
  
end
