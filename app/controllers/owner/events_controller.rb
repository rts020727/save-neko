class Owner::EventsController < ApplicationController
  before_action :authenticate_shop!
  
  def index
    @events = current_shop.events
    @event = Event.new
  end
  
  def create
    event = Event.new(event_params)
    event.shop_id = current_shop.id
    event.save
    redirect_to owner_events_path
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    event = Event.find(params[:id])
    event.shop_id = current_shop.id
    event.update(event_params)
    redirect_to owner_event_path(event.id)
  end
  
  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to owner_events_path
  end
  
  
  private
  
  def event_params
    params.require(:event).permit(:title, :content, :start_time)
  end
end
