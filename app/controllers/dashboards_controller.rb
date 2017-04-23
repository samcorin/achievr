class DashboardsController < ApplicationController
  def show
    @users = User.all
    @user = current_user
    @resoureces = current_user.team.resources
    @objectives = current_user.objectives

    @team = User.all.where.not(id: current_user.id)
  end
end

# t.jsonb :data, null: false, default: "{}"
