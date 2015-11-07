class AddAttachmentToProject < ActiveRecord::Migration
  def change
    add_column :projects, :project, :string
    add_column :projects, :avatar_project, :string
  end
end
