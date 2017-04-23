class UsersController < ApplicationController
  def update
    @user = current_user
    @user.points += params[:points].to_i
    @user.save
  end

  def reset
    @user = current_user
    @user.points = 0
    @user.save
  end
end
