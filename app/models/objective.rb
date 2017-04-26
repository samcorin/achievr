class Objective < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :status, inclusion: { in: ["Not Started","In Progress","Completed"], allow_nil: false }
end
