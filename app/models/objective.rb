class Objective < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :status, inclusion: { in: ["not started","in progress","completed"], allow_nil: false }
end
