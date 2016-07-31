class Api::V1::CartedEventsController < ApplicationController

def index
  # @carted_events = Unirest.get("http://localhost:3000/api/v1/carted_events.json").body
end

def review
  params[:info]
  under_review = []
  under_review << params[:info]
  @under_review = under_review
  #create email code
  render :nothing => false, :status => 200
end

def show
  @carted_event = CartedEvent.find(params[:id])
end

def destroy
  @carted_event = CartedEvent.find(params[:id])
  @carted_event.destroy
end

end
