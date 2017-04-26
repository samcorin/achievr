class Objective < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :status, inclusion: { in: ["Not Started","In Progress","Completed"], allow_nil: false }

  def self.objective_class(objective)
    case objective.status
    when "Not Started"
      "btn btn-warning"
    when "In Progress"
      "btn btn-info"
    when "Completed"
      "btn btn-success"
    end
  end
end
