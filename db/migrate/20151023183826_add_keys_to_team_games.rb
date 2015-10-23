class AddKeysToTeamGames < ActiveRecord::Migration
  def change
    add_column :team_games, :game_id, :integer
    add_column :team_games, :team_id, :integer
  end
end
