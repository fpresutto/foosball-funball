class AddGameIdsToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :first_game_id, :integer
    add_column :matches, :second_game_id, :integer
    add_column :matches, :third_game_id, :integer
  end
end
