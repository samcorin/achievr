class UsersController < ApplicationController
  def update
    @user = current_user
    @user.points += params[:points].to_i
    @user.save
  end
end
