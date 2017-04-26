class ObjectivesController < ApplicationController
  def new
    # binding.pry
    @objective = Objective.new
  end

  def create
    @objective = Objective.new(objective_params)
    @objective.user = current_user
    @objective.save

    # redirect_to tasks_path
  end

  def update
    @objective = Objective.find(params[:id])
    case
    when @objective.status == "Not Started"
      @objective.status = "In Progress"
    when @objective.status == "In Progress"
      @objective.status = "Completed"
    when @objective.status == "Completed"
      @objective.status = "Not Started"
    end
    @objective.save
  end

  private

  def objective_params
    params.require(:objective).permit(:name, :due_date, :status)
  end
end
