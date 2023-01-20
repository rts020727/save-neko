class Public::SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search
    # キーワード検索
    # 店舗の名前または投稿のタイトルを検索できる
    @keyword = params[:keyword]
    @model = params[:model]
    @method = params[:method]
    
    if @model == "shop"
      @records = Shop.where(is_deleted: 0).search_for(@keyword, @method)
    else
      @records = Photo.where(is_deleted: 0).search_for(@keyword, @method)
    end
    
    # 全ての店舗から在籍している猫を性別と特徴を絞り込んで検索できる
    if params[:gender] && params[:feature]
      @cats = Cat.where(gender: params[:gender]).where(feature: params[:feature])
    end
  end
  
  def search_form
    @shops = Shop.where(is_deleted: 0)
  end

end
