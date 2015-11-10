class AddTeamIdToTeamrelationship < ActiveRecord::Migration
  def change
    add_column :teamrelationships, :team_id, :integer
  end
end
