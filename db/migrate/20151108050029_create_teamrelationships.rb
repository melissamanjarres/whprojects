class CreateTeamrelationships < ActiveRecord::Migration
  def change
    create_table :teamrelationships do |t|

      t.timestamps null: false
    end
  end
end
