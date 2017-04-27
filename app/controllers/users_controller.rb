class UsersController < ApplicationController
  def update
    @user = current_user
    @user.update(user_params)
    # @user.points += params[:points].to_i

    if @user.save
      @badge = Badge.new(user: @user, title: "personal-information")
      @badge.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js  # <-- will render `app/views/users/update.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'dashboards/show' }
        format.js  # <-- idem
      end
    end

  end

  def reset_points
    # Reset everything.
    Badge.destroy_all
    @user = current_user
    @user.points = 0
    @user.save
  end

  def add_points
    @user = current_user
    @user.points += params[:points].to_i
    @user.save
  end

  def get_objectives
    @objectives = current_user.objectives

    respond_to do |format|
      format.html # show.html.erb
      format.js
      format.json { render json: @objectives }
     end

  end

  private

  def user_params
    params.require(:user).permit(:address, :city, :prefecture, :postal_code, :bank_account_number, :social_security_number, :person_to_contact, :birthday)
  end

end
