class BlogPost < ApplicationRecord
	belongs_to :user
	has_many :comments

	def self.search(search)
  		where("title LIKE ?", "%#{search}%") 
  		where("blog_entry LIKE ?", "%#{search}%")
	end

end

