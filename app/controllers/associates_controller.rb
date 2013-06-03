class AssociatesController < ApplicationController
  before_filter :signed_in_associate, only: [:index, :edit, :update, :destroy]
  before_filter :correct_associate,   only: [:edit, :update]
  before_filter :admin_associate,     only: :destroy

  def new
  	@associate = Associate.new
  end

  def show
  	@associate = Associate.find(params[:id])
    @searches = @associate.searches

  end

  def index
  	@associates = Associate.all
  end

  def edit
  end

  def create
    @associate = Associate.new(params[:associate])
    if @associate.save
      sign_in @associate
      flash[:success] = "Welcome to Daversa Partners!"
      redirect_to @associate
    else
      render 'new'
    end
  end

  def update
    if @associate.update_attributes(params[:associate])
      flash[:success] = "Profile updated"
      sign_in @associate
      redirect_to @associate
    else
      render 'edit'
    end
  end

  def destroy
    Associate.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to associates_url
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
