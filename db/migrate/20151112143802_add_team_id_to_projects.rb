class AddTeamIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :team_id, :integer
    add_column :projects, :team_name, :string
  end
end
