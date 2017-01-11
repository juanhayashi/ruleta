class AddGameRefToRound < ActiveRecord::Migration[5.0]
  def change
    add_reference :rounds, :game, index: true, foreign_key: true
  end
end
