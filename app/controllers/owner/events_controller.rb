class Owner::EventsController < ApplicationController
  before_action :authenticate_shop!
  before_action :is_matching_login_shop, except: [:index]
  
  def index
    @events = current_shop.events
    @event = Event.new
    # 今月のイベント情報の絞り込み
    @current_month_events = current_shop.events.where(start_time: Time.now.all_month)
  end
  
  def create
    @event = Event.new(event_params)
    @event.shop_id = current_shop.id
    if @event.save
      flash[:notice] = "新規登録に成功しました！"
      redirect_to owner_events_path
    else
      @events = current_shop.events
      flash.now[:alert] = "新規登録に失敗しました"
      render :index
    end
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    @event.shop_id = current_shop.id
    if @event.update(event_params)
      flash[:notice] = "編集の保存に成功しました！"
      redirect_to owner_event_path(@event.id)
    else
      flash.now[:alert] = "編集の保存に失敗しました"
      render :edit
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    flash[:notice] = "削除に成功しました！"
    @event.destroy
    redirect_to owner_events_path
  end
  
  
  private
  
  def is_matching_login_shop
    event = Event.find(params[:id])
    unless event.shop_id == current_shop.id
      redirect_to root_path
    end
  end
  
  def event_params
    params.require(:event).permit(:title, :content, :start_time)
  end
end
