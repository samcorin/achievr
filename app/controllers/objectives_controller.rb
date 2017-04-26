class ObjectivesController < ApplicationController
  def new
    binding.pry
    @objective = Objective.new
  end

  def create
    @objective = Objective.new(objective_params)
    @objective.user = current_user
    @objective.save

    # redirect_to tasks_path
  end

  private

  def objective_params
    params.require(:objective).permit(:name, :due_date, :status)
  end
end
