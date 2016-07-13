class CartedEventsController < ApplicationController

  def create
      @carted_event = CartedEvent.create(
      event_id: params[:event_id],
      user_id: current_user.id,
      status: "pending"
      )
  end

  def show
    @carted_event = CartedEvent.find(params[:id])
  end

  def review
    @carted_events = current_user.events
    #@carted_events = CartedEvent.where(user_id: current_user.id, status: "pending")
  end

  def confirm
     @carted_event = CartedEvent.find_by(id: params[:id])

    if @carted_event.update(
      status: "confirmed"
      )
      redirect_to :back
    end
  end

  def destroy
    @carted_event = CartedEvent.find(params[:id])
    @carted_event.update(status: "removed")

    redirect_to :back
  end


end
