class SearchesController < ApplicationController
  before_filter :signed_in_associate, only: [:new, :create, :index, :edit, :update, :show]
  before_filter :admin_associate,     only: :destroy

  def new
  	@search = current_associate.searches.new
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
    @search = current_associate.searches.new(params[:search])
    if @search.save
      flash[:success] = "Successfully created a new search!"
      redirect_to @search
    else
      render 'new'
    end
  end

  def update
    @search = Search.find(params[:id])
    if @search.update_attributes(params[:search])
      flash[:success] = "Search updated"
      redirect_to @search
    else
      render 'edit'
    end
  end

  def destroy
    Search.find(params[:id]).destroy
    flash[:success] = "Search destroyed."
    redirect_to searches_url
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
