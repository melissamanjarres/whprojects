class Team < ActiveRecord::Base
  has_many :teamrelationships, dependent: :destroy
  has_many :users, through: :teamrelationships
  validates :user_id, presence: true
  validates :name, presence: true
  def self.search(query)
    	where("name like ?","#{query}%")
  end	

end
