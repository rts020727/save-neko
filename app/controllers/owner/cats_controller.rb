class Owner::CatsController < ApplicationController
  before_action :authenticate_shop!
  before_action :is_matching_login_shop, only: [:show, :edit, :update, :destroy]

  def new
    @cat = Cat.new
  end

  def index
    @cats = current_shop.cats.page(params[:page]).per(6)
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.shop_id = current_shop.id
    if @cat.save
      flash[:notice] = "新規登録に成功しました！"
      redirect_to owner_cat_path(@cat.id)
    else
      flash.now[:alert] = "新規登録に失敗しました"
      render :new
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      flash[:notice] = "編集の保存に成功しました！"
      redirect_to owner_cat_path(@cat.id)
    else
      flash.now[:alert] = "編集の保存に失敗しました"
      render :edit
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    flash[:notice] = "卒業に成功しました！"
    @cat.destroy
    redirect_to owner_cats_path
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :gender, :feature, :introduction, :image)
  end
  
  # ログインしている店舗ユーザー以外の情報へアクセスした場合トップページへ
  def is_matching_login_shop
    cat = Cat.find(params[:id])
    unless cat.shop_id == current_shop.id
      redirect_to root_path
    end
  end
end
