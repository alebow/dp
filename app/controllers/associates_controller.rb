class AssociatesController < ApplicationController

  def new
  	@associate = Associate.new
  end

  def show
  	@associate = Associate.find(params[:id])
  end

  def index
  	@associates = Associate.all
  end

  def edit
  end

  def create
    @associate = Associate.new(params[:associate])
    if @associate.save
      flash[:success] = "Welcome to Daversa Partners!"
      redirect_to @associate
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end
  
end
