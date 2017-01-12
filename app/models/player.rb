class Player < ApplicationRecord
  has_many :results
  has_many :rounds, through: :results
  validates_presence_of :name
  validates_presence_of :money
end
