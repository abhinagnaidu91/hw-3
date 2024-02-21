class PlacesController < ApplicationController

  def index
    # find all place rows
    @places = Place.all
    # render places/index view
  end

  def show
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # find Contacts for the Place
    @entries = Entry.where({ "place_id" => @place["id"] })
  end

  def new
    # render view with new Place form
  end

  def create
    # start with a new Place
    @place = Place.new

    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]
  
    # save Company row
    @place.save

    # redirect user
    redirect_to "/places"
  end

  def edit
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # render view with edit Place form
  end

  def update
    # find a place
    @place = Place.find_by({ "id" => params["id"] })

    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]

    # save Place row
    @place.save

    # redirect user
    redirect_to "/places"
  end

  def destroy
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })

    # destroy Place row
    @place.destroy

    # redirect user
    redirect_to "/places"
  end
  
end
