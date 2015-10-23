require 'rails_helper'

RSpec.describe Match, type: :model do
# Attributes
  check_model_attributes [
    'winning_team',
    'first_game_id',
    'second_game_id',
    'third_game_id']

# Associations
  it "belongs to team" do
    should belong_to :team
  end
  it "has many games" do
    should have_many :games
  end

# Validations
  it { should validate_presence_of :first_game_id }
  it { should validate_presence_of :second_game_id }
  it { should validate_uniqueness_of :first_game_id }
  it { should validate_uniqueness_of :second_game_id }

end
