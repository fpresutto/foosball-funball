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

  def percentage_games_won
    (games_won.to_f / (games_won.to_f + games_lost.to_f))*100
  end

  def percentage_games_lost
    (games_lost.to_f / (games_won.to_f + games_lost.to_f))*100
  end
end
