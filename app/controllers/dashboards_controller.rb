class DashboardsController < ApplicationController
  def show
    @user = current_user
    redirect_to company_welcome_company_path if current_user.sign_in_count == 1
  end
end
