class Project < ActiveRecord::Base
    belongs_to :user
    validates :user_id, presence: true
    
    has_attached_file :avatar_project, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "project-default.jpg"
    validates_attachment_content_type :avatar_project, content_type: /\Aimage\/.*\Z/
    
    def self.search(query)
    	where("name like ?","#{query}%")
    end	
end
