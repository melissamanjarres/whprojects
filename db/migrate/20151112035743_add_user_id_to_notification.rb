class AddUserIdToNotification < ActiveRecord::Migration
  def change
    add_column :notifications, :user_id, :nteger
    add_column :notifications, :tipo, :integer
  end
end
