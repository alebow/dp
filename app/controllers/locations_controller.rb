class LocationsController < ApplicationController
  before_filter :signed_in_associate, only: [:new, :create, :index, :edit, :update, :show]
  before_filter :admin_associate,     only: :destroy

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
    @location = Location.new(params[:location])
    if @location.save
      flash[:success] = "Successfully added a new location!"
      redirect_to @location
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end


  private

      def signed_in_associate
        unless signed_in?
          store_location
          redirect_to signin_url, notice: "Please sign in."
        end
      end

      def correct_associate
      @associate = Associate.find(params[:id])
      redirect_to(root_path) unless current_associate?(@associate)
      end

      def admin_associate
      redirect_to(root_path) unless current_associate.admin?
      end

end
