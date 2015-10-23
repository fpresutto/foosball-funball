class User < ActiveRecord::Base
  #associations
  belongs_to :team

  delegate :games_won, to: :team
  delegate :games_lost, to: :team
  delegate :percentage_games_won, to: :team
  delegate :percentage_games_lost, to: :team

  validate :maximum_users

  def maximum_users
    self.errors.add(:base, 'Maximum 2 players per team!') if self.team.users.count >= 2
  end

end
