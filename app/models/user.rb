class User < ActiveRecord::Base
  #associations
  belongs_to :team
end
