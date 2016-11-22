class User < ActiveRecord::Base
	has_secure_password
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
	has_many :comments
	
	#validates :email, uniqueness: true
	validates :email, presence: true
	
	validates :name, presence: true
	
end
