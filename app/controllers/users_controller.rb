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
    # if @user.save
    #   redirect_to :back
    # else
    #   render "dashboards/show"
    # end
  end

  def reset
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
    # with params
    # @objectives = current_user.objectives.where(status: params[:status])
    # All
    @objectives = current_user.objectives

    # not completed
    # @objectives = current_user.objectives.where(status: ["Not Started", "In Progress"])

    # if request.xhr?
    #   render :json => {
    #       :file_content => @objectives
    #   }
    # end
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

# def test
#   some_parameter = params[:some_parameter]
#   # do something with some_parameter and return the results

#   @test=books.find.last
#   respond_do |format|
#     format.html
#     format.json {render json: @test}
#   end
# end
