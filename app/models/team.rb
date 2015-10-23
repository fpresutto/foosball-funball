class Team < ActiveRecord::Base
  #associations
  has_many :users
  has_many :matches
end
