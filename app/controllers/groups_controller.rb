class GroupsController < ApplicationController
	before_filter :signed_in_associate, only: [:index, :show]
  before_filter :admin_associate,     only: :destroy

  def index
  	@groups = Group.all
  end

  def show
  	@group = Group.find(params[:id])
  	@associates = @group.associates
		@searches = @group.searches
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
