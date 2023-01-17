class Owner::CatsController < ApplicationController
  before_action :authenticate_shop!
  
  def new
    @cat = Cat.new
  end
  
  def index
    @cats = current_shop.cats
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
    params.require(:cat).permit(:name, :gender, :feature, :introduction, :cat_image)
  end
  
  def redirect_root
    redirect_to root_path unless shop_signed_in?
  end
end
