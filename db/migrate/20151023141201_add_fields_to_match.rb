class AddFieldsToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :games, :integer
    add_column :matches, :winning_team, :string
  end
end
