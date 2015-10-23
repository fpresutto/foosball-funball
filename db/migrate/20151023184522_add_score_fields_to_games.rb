class AddScoreFieldsToGames < ActiveRecord::Migration
  def change
    add_column :games, :winning_team_id, :integer
    add_column :games, :losing_team_id, :integer
    add_column :games, :winning_team_score, :integer
    add_column :games, :losing_team_score, :integer
  end
end
