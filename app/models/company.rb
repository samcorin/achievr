class Company < ApplicationRecord
  has_many :places
  has_many :teams
end
