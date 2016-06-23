class OrdersController < ApplicationController

  def index
    
  end

  def create
      @order = Order.create(
      event_id: params[:event_id],
      user_id: current_user.id,
      )
      redirect_to :back 
    end

  def show
    @order = Order.find(params[:id])
    @ordered_events = @order.carted_events
  end

end
