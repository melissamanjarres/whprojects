class Team < ActiveRecord::Base
  has_many :team_relationships, dependent: :destroy
  has_many :users, through: :team_relationships
end
