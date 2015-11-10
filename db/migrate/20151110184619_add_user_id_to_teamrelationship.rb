class AddUserIdToTeamrelationship < ActiveRecord::Migration
  def change
    add_column :teamrelationships, :user_id, :integer
  end
end
