class Team < ActiveRecord::Base
  #associations
  has_many :users
  has_many :matches
  has_many :games, :through => :team_games
end
