class Objective < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :status, inclusion: { in: ["Not Started","In Progress","Completed"], allow_nil: false }

  def self.objective_class(objective)
    case objective.status
    when "Not Started"
      "btn btn-obj-not-started btn-block"
    when "In Progress"
      "btn btn-obj-in-progress btn-block"
    when "Completed"
      "btn btn-obj-completed btn-block"
    end
  end
end
