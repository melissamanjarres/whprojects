class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.text :avatar
      t.text :github_url

      t.timestamps null: false
    end
  end
end
