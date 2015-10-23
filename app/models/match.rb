class Match < ActiveRecord::Base
  #associations
  belongs_to :team
  has_many :games
end
