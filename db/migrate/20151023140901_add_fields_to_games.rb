class AddFieldsToGames < ActiveRecord::Migration
  def change
    add_column :games, :score, :integer
  end
end
