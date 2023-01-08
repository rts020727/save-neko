class Owner::CatsController < ApplicationController
  before_action :authenticate_shop!
  
  def new
    @cat = Cat.new
  end
  
  def index
    @cat_new = Cat.new
    @cats = current_shop.cats
  end
  
  def create
    @cat = Cat.new(cat_params)
    @cat.shop_id = current_shop.id
    if @cat.save
      redirect_to owner_cat_path(@cat)
    else
      @cats = Cat.all
      render :index
    end
  end

  def show
    @cat_new = Cat.new
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end
  
  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to owner_cat_path(@cat)
    else
      render :edit
    end
  end
  
  def destroy
    @cat = Cat.find(params[:id])
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
