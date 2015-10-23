class AddFieldsToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :size, :integer
  end
end
