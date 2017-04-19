module DashboardsHelper
  def add_points(user, points)
    @user = user
    @user.points += points
    @user.save
  end
end
