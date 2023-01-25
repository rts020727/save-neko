class Public::HomesController < ApplicationController
  def top
    @photos = Photo.page(params[:page]).per(4).order("updated_at DESC")
    render layout: 'home_layout'
  end

  def about
  end

  def signup
  end

  def login
  end
end
