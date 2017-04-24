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

  def get_objectives
    # with params
    # @objectives = current_user.objectives.where(status: params[:status])
    # All
    @objectives = current_user.objectives

    # not completed
    @objectives = current_user.objectives.where(status: ["Not Started", "In Progress"])

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
