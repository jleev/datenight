class Api::V1::CartedEventsController < ApplicationController

def index
  # @carted_events = Unirest.get("http://localhost:3000/api/v1/carted_events.json").body
end

def create
  # @carted_events = CartedEvent.create(
  # event_id: params[:event_id],
  # user_id: current_user.id,
  # status: "pending"
  # )

  # if @person.save
  #   render :show
  # else
  #   render json: {errors: @person.errors.full_messages }, status: 422
  # end
end

def show
  @carted_event = CartedEvent.find(params[:id])
end

def destroy
  @carted_event = CartedEvent.find(params[:id])
  @carted_event.destroy
end

end
