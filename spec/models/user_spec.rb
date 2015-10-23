require 'rails_helper'

RSpec.describe User, type: :model do
# Attributes
  check_model_attributes [
    'first_name',
    'last_name']

# Associations
  it "belongs to team" do
    should belong_to :team
  end

# Validations
  it { should validate :maximum_users }

end
