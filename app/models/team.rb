class Team < ApplicationRecord
  belongs_to :company
  has_many :resources
end
