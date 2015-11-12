class AddUserIdToNotification < ActiveRecord::Migration
  def change
    add_column :notifications, :user_id, :integer
    add_column :notifications, :tipo, :integer
  end
end
