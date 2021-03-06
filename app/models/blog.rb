class Blog < ActiveRecord::Base
	has_attached_file :image, styles: {medium:"300x300>"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	has_many :comments, dependent: :destroy
	has_many :taggings
	has_many :tags, through: :taggings

	def all_tags=(names)
		self.tags = names.split(",").map do |name|
			Tag.where(name: name.strip).first_or_create!
		end
	end

	def all_tags
		self.tags.map(&:name).join(", ")
	end

	def self.tagged_with(name)
		Tag.find_by_name!(name).blogs
	end
end
