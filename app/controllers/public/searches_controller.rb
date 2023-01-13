class Public::SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search
    # 検索フォームから検索モデル:rangeの情報の受け取り
    @range = params[:range]
    
    # 検索フォームから検索方法:search、検索ワード:keywordの受け取り
    if @range == "Shop"
      @shops = Shop.looks(params[:search], params[:keyword])
      redirect_to search_result_path
    else
      @photos = Photo.looks(params[:search], params[:keyword])
      redirect_to search_result_path
    end
  end
  
  def search_result
    @range = params[:range]
    @shops = Shop.looks(params[:search], params[:keyword])
    @photos = Photo.looks(params[:search], params[:keyword])
  end
end
