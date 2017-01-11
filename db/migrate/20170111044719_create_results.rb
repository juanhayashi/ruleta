class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :bet
      t.integer :gain

      t.timestamps
    end
  end
end
