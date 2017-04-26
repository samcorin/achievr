class DashboardsController < ApplicationController
  def show
    @users = User.all

    @resources = current_user.team.resources

    @objectives = current_user.objectives

    @badges = current_user.badges

    @team = current_user.team

    @user = current_user

    @company = Company.first

    @email = "mailto:#{(@team.users.pluck(:email) - [current_user.email]).join(',')}?Subject=Look%20forward%20to%20meet%20you&body=Hi%20everyone,%0D%0AI%20look%20forward%20to%20meeting%20you%20all%20on%20Monday.%0D%0A%0D%0ARegards,%0D%0A#{@user.first_name} #{@user.last_name}"
    @email2 = "mailto:#{(@team.users.pluck(:email) - [current_user.email]).join(',')}?Subject=I%27m%20the%20new%20sales%20assistant&body=Hello%20everyone,%0D%0AMy%20name%20is%20#{@user.first_name}%20#{@user.last_name},%20I%20have%20just%20been%20hired%20as%20the%20new%20sales%20assistant%20here%20at%20#{@company.name}.%0D%0A%0D%0AI%20hope%20to%20meet%20you%20soon%20and%20look%20forward%20to%20the%20upcoming%20months%20here.%0D%0A%0D%0AAll%20the%20Best,%0D%0A#{@user.first_name}%20#{@user.last_name}"

  end
end
