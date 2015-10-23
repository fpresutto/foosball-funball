class Match < ActiveRecord::Base
  #associations
  belongs_to :team
  has_many :games

  validates_presence_of :first_game_id, :second_game_id
  validates_uniqueness_of :first_game_id, :second_game_id
end
