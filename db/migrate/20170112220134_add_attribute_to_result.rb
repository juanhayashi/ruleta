class AddAttributeToResult < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :color_bet, :string
  end
end
