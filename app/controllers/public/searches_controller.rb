class Public::SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search
    @keyword = params[:keyword]
    @model = params[:model]
    @method = params[:method]
    
    if @model == "shop"
      @records = Shop.search_for(@keyword, @method)
    else
      @records = Photo.search_for(@keyword, @method)
    end
  end
  
  def search_form
    @shops = Shop.all
  end

end
