class Owner::CatsController < ApplicationController
  
  def index
    @cat = Cat.new
    @cats = Cat.all
  end
  
  def create
    @cat = Cat.new(cat_params)
    @cat.shop_id = current_shop.id
    if @cat.save
      redirect_to owner_shop_cat_path(current_shop, @cat)
    else
      @cats = Cat.all
      render :index
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
      redirect_to owner_shop_cat_path(carrent_shop, @cat)
    else
      render :edit
    end
  end
  
  private
  
  def cat_params
    params.require(:cat).permit(:name, :gender, :feature, :introduction, :cat_image)
  end
end
