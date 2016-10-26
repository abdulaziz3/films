class Genre < ActiveRecord::Base
	has_many :movies, dependent: :destroy
	
	# validation in rails helper
	validates :name, presence: true
	validates :name, uniqueness: true
	
end
