class User < ActiveRecord::Base
  #associations
  belongs_to :team

  delegate :games_won, to: :team
  delegate :games_lost, to: :team

end
