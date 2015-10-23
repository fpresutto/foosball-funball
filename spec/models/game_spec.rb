require 'rails_helper'

RSpec.describe Game, type: :model do

# Attributes
  check_model_attributes [
    'winning_team_id',
    'losing_team_id',
    'winning_team_score',
    'losing_team_score']

# Associations
  it "belongs to match" do
    should belong_to :match
  end
  it "has many teams" do
    should have_many :teams
  end

# Validations
  it { should validate_numericality_of :winning_team_score }
  it { should validate_numericality_of :losing_team_score }
end
