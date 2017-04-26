class DashboardsController < ApplicationController
  def show
    @users = User.all

    @resources = current_user.team.resources

    @objectives = current_user.objectives

    @badges = current_user.badges

    @team = current_user.team

    @email = "mailto:#{(@team.users.pluck(:email) - [current_user.email]).join(',')}?Subject=Nice%20to%20meet%20you&body=Hi%20everyone,%0D%0AI%20look%20forward%20to%20meeting%20you%20all%20on%20Monday."
  end
end
