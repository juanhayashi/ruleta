class Round < ApplicationRecord
  has_many :results, dependent: :destroy
  has_many :players, through: :results
end
