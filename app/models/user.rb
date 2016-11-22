class User < ActiveRecord::Base
	has_secure_password
	
	has_many :comments
	
	validates :email, uniqueness: true
	validates :email, presence: true
	
	validates :name, presence: true
	
end
