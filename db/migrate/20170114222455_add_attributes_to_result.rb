class AddAttributesToResult < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :initial_money, :integer
    add_column :results, :final_money, :integer
  end
end
