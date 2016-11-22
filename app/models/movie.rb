class Movie < ActiveRecord::Base
	belongs_to :genre
	has_many :comments, :dependent => :destroy
	
	mount_uploader :attachment,AttachmentUploader

	validates :title, presence: true
	
	def average_stars
		comments.average(:stars)
	end
	
	def apply_discount(movie, discount)
		if !movie.nil?
			movie.price = movie.price - movie.price * discount
		end
	end

	def self.search(query)
		where("title LIKE ?", "%#{query}%")
	end

end
