class RemoveScoreFieldFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :score, :integer
  end
end
