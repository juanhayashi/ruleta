class AddAttributeToRound < ActiveRecord::Migration[5.0]
  def change
    add_column :rounds, :resultado_ruleta, :string
  end
end
