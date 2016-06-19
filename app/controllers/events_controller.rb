class EventsController < ApplicationController

  def index

  end  

  def show
    @event = Event.find_by(id: params[:id])
  end

  def search_results
    search_term = params[:search_term]

    @events = Event.where("DATE(datetime) = ?", search_term)
  end

  def status_update
    if @event = Event.find_by(id: params[:id])
       @event.update(status: "pending")
     end 
  end

  def review
    @events = Event.where(status: "pending")
  end

  def review_events
    redirect_to '/review'
  end

  def destroy
    @event = Event.find(parames[:id])
    @event.update(status: "nil")
  end


  def zurb_index
    
  end

  def test
    
  end


end
