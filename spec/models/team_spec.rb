require 'rails_helper'

RSpec.describe Team, type: :model do
# Attributes
  check_model_attributes [
    'name']

# Associations
  it "has many users" do
    should have_many :users
  end
  it "has many matches" do
    should have_many :matches
  end
  it "has many games" do
    should have_many :games, through(:team_games)
  end

end
