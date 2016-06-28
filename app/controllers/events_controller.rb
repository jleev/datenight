class EventsController < ApplicationController

  def index

    # @dinner ||= 5

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

  def dinner
    restaurants = Unirest.get("http://opentable.herokuapp.com/api/restaurants?city=chicago").body
    @restaurants = restaurants["restaurants"].first(10)
  end

  def seatgeek
    seatgeek = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz").body
    @seatgeeks = seatgeek["events"].first(10)
  end

  def sports
    sport = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&type=sports").body
    @sports = sport["events"].first(10)
  end

  def theater
    theater = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&type=theater").body
    @theaters = theater["events"].first(10)
  end

  def concert
    concert = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&type=concert").body
    @concerts = concert["events"].first(10)
  end

  def test
    
  end


end
