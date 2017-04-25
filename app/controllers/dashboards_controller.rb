class DashboardsController < ApplicationController
  def show
    @users = User.all
    @user = current_user
    @resoureces = current_user.team.resources
    @objectives = current_user.objectives

    @badges = current_user.badges

    # @team = User.all.where.not(id: current_user.id)
    @team = current_user.team
  end
end
