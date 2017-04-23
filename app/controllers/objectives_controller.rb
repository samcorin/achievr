class ObjectivesController < ApplicationController
  def new
    @objective = Objective.new
  end

  def create
    binding.pry
    @objective = Objective.new(objective_params)
    @objective.user = current_user
    @objective.save

    # redirect_to tasks_path
  end

  private

  def objective_params
    params.require(:objective).permit(:name)
  end
end
