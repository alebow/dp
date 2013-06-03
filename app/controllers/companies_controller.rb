class CompaniesController < ApplicationController
  before_filter :signed_in_associate, only: [:new, :create, :index, :edit, :update, :show]
  before_filter :admin_associate,     only: :destroy

  def new
  	@company = Company.new
  end

  def show
  	@company = Company.find(params[:id])
    @searches = @company.searches
    @locations = @company.locations
  end

  def index
  	@companies = Company.all
  end

  def edit
  	@company = Company.find(params[:id])
  end

  def create
    @company = Company.new(params[:company])
    if @company.save
      flash[:success] = "Successfully created a new company!"
      redirect_to @company
    else
      render 'new'
    end
  end

  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(params[:company])
      flash[:success] = "Company updated"
      redirect_to @company
    else
      render 'edit'
    end
  end

  def destroy
    Company.find(params[:id]).destroy
    flash[:success] = "Company destroyed."
    redirect_to companies_url
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
