class AddRefsToResult < ActiveRecord::Migration[5.0]
  def change

    add_reference :results, :player, index: true, foreign_key: true
    add_reference :results, :round, index: true, foreign_key: true

  end
end
