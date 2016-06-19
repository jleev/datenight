class CartedEventsController < ApplicationController

  def create
      @carted_event = CartedEvent.create(
      event_id: params[:event_id],
      user_id: current_user.id,
      status: "pending"
      )
      redirect_to :back  
  end

  def review
    @carted_events = current_user.events
    #@carted_events = CartedEvent.where(user_id: current_user.id, status: "pending")
  end

  def destroy
    @carted_event = CartedEvent.find(parames[:id])
    @carted_event.update(status: "removed")

    redirect_to :back 
  end

  def confirmed
      @carted_event = CartedEvent.update(
      event_id: params[:event_id],
      user_id: current_user.id,
      status: "pending"
      )
      redirect_to :back 
  end

end
