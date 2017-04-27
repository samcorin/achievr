class Objective < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :status, inclusion: { in: ["Not Started","In Progress","Completed"], allow_nil: false }

  def self.objective_class(objective)
    case objective.status
    when "Not Started"
      "btn btn-warning btn-block"
    when "In Progress"
      "btn btn-info btn-block"
    when "Completed"
      "btn btn-success btn-block"
    end
  end
end
