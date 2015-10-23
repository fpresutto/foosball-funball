class AddKeyToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :team_id, :integer
  end
end
