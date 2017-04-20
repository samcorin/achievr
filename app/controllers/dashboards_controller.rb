class DashboardsController < ApplicationController
  def show
    @users = User.all
    # @company = @user.team.company
    @user = current_user
  end
end
