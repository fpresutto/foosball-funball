class Game < ActiveRecord::Base
  #associations
  belongs_to :match
  has_many :teams, :through => :team_games

  validates_numericality_of :winning_team_score, only_integer: true, less_than_or_equal_to: 10
  validates_numericality_of :losing_team_score, only_integer: true, less_than_or_equal_to: 10
end
