class Team < ActiveRecord::Base
  #associations
  has_many :users
  has_many :matches
  has_many :games, :through => :team_games

  def games_won
    Game.where(winning_team_id: id).count
  end

  def games_lost
    Game.where(losing_team_id: id).count
  end
end
