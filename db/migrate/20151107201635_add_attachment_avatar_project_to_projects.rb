class AddAttachmentAvatarProjectToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :avatar_project
    end
  end

  def self.down
    remove_attachment :projects, :avatar_project
  end
end
