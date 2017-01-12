class Player < ApplicationRecord
  has_many :results
  has_many :rounds, through: :results
  validates_presence_of :name
  validates_presence_of :money

  after_initialize :init

  def init
    self.money ||= 10000
  end

  def add_money
    self.money = self.money + 10000
    self.save
  end

end
