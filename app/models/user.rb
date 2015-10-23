class User < ActiveRecord::Base
  #associations
  belongs_to :team

  delegate :games_won, to: :team
  delegate :games_lost, to: :team
  delegate :percentage_games_won, to: :team
  delegate :percentage_games_lost, to: :team

end
