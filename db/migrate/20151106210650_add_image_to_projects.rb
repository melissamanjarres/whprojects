class AddImageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_image_id, :string
  end
end
