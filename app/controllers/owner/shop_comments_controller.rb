class Owner::ShopCommentsController < ApplicationController
  
  def destroy
    @shop = current_shop
    ShopComment.find(params[:id]).destroy
  end
  
end
