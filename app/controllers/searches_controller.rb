class SearchesController < ApplicationController

  def new
  	@search = Search.new
  end

  def show
  	@search = Search.find(params[:id])
  end

  def index
  	@searches = Search.all
  end

  def edit
  	@search = Search.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end
  
end
