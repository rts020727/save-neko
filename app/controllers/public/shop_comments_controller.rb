class Public::ShopCommentsController < ApplicationController
  def create
    @shop = Shop.find(params[:shop_id])
    @comment = current_user.shop_comments.new(comment_params)
    @comment.shop_id = @shop.id
    @comment.score = Language.get_data(comment_params[:comment])
    @comment.save
    unless @comment.save
      render 'error'
    end
  end
  
  def destroy
    @shop = Shop.find(params[:shop_id])
    ShopComment.find(params[:id]).destroy
  end
  
  private
  
  def comment_params
    params.require(:shop_comment).permit(:comment)
  end
end
