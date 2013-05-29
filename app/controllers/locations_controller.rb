class LocationsController < ApplicationController

  def new
  	@location = Location.new
  end

  def show
  	@location = Location.find(params[:id])
  end

  def index
  	@locations = Location.all
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
