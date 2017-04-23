class DashboardsController < ApplicationController
  def show
    @users = User.all
    @user = current_user
    @resoureces = current_user.team.resources
    @objectives = current_user.objectives
  end
end

# t.jsonb :data, null: false, default: "{}"
