class CompaniesController < ApplicationController

  def new
  	@company = Company.new
  end

  def show
  	@company = Company.find(params[:id])
  end

  def index
  	@companies = Company.all
  end

  def edit
  	@company = Company.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end

end
