class Player < ApplicationRecord
  has_many :results
  has_many :rounds, through: :results
end
