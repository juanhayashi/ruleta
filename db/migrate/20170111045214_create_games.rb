class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.boolean :is_over_32c

      t.timestamps
    end
  end
end
