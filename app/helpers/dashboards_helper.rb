module DashboardsHelper
  def add_points(user, points)
    user.points += points
  end
end
