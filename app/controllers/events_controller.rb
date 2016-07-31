class EventsController < ApplicationController

  def index
    search_term = params[:search_term]
    events = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&datetime_local.gt=#{search_term}&per_page=100").body
    @events = events["events"].select { |event| event["stats"]["lowest_price"] != nil }

    sports = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=sports&datetime_local.gt=#{search_term}&per_page=100").body
    @sports = sports["events"].select { |event| event["stats"]["lowest_price"] != nil }

    theater = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=theater&datetime_local.gt=#{search_term}&per_page=100").body
    @theaters = theater["events"].select { |event| event["stats"]["lowest_price"] != nil }

    concert = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=concert&datetime_local.gt=#{search_term}&per_page=100").body
    @concerts = concert["events"].select { |event| event["stats"]["lowest_price"] != nil }

    restaurants = Unirest.get("http://opentable.herokuapp.com/api/restaurants?city=chicago&per_page=100").body
    @restaurants = restaurants["restaurants"]

  end

  def carted_events

  end

  def search_results
    search_term = params[:search_term]
    events = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&datetime_local.gt=#{search_term}&per_page=100").body
    @events = events["events"].select { |event| event["stats"]["lowest_price"] != nil }

    sports = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=sports&datetime_local.gt=#{search_term}&per_page=100").body
    @sports = sports["events"].select { |event| event["stats"]["lowest_price"] != nil }

    theater = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=theater&datetime_local.gt=#{search_term}&per_page=100").body
    @theaters = theater["events"].select { |event| event["stats"]["lowest_price"] != nil }

    concert = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=concert&datetime_local.gt=#{search_term}&per_page=100").body
    @concerts = concert["events"].select { |event| event["stats"]["lowest_price"] != nil }

    restaurants = Unirest.get("http://opentable.herokuapp.com/api/restaurants?city=chicago&per_page=100").body
    @restaurants = restaurants["restaurants"]
  end



  def test
    search_term = params[:search_term]
    events = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&datetime_local.gt=#{search_term}&per_page=100").body
    @events = events["events"].select { |event| event["stats"]["lowest_price"] != nil }

    sports = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=sports&datetime_local.gt=#{search_term}&per_page=100").body
    @sports = sports["events"].select { |event| event["stats"]["lowest_price"] != nil }

    theater = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=theater&datetime_local.gt=#{search_term}&per_page=100").body
    @theaters = theater["events"].select { |event| event["stats"]["lowest_price"] != nil }

    concert = Unirest.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=concert&datetime_local.gt=#{search_term}&per_page=100").body
    @concerts = concert["events"].select { |event| event["stats"]["lowest_price"] != nil }

    restaurants = Unirest.get("http://opentable.herokuapp.com/api/restaurants?city=chicago&per_page=100").body
    @restaurants = restaurants["restaurants"]
  end


end
