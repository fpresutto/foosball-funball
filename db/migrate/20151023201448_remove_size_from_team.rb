class RemoveSizeFromTeam < ActiveRecord::Migration
  def change
    remove_column :teams, :size, :integer
  end
end
