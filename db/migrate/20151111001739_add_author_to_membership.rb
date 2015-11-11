class AddAuthorToMembership < ActiveRecord::Migration
  def change
    add_column :memberships, :author, :integer
  end
end
