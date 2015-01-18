class Comment < ActiveRecord::Base
	has_attached_file :image, styles: {small:"50x50>"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  belongs_to :blog
end
