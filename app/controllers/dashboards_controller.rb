class DashboardsController < ApplicationController
  def show
    @users = User.all
    @user = current_user
  end
end
