class Rating < ActiveRecord::Base
	belongs_to :user
	belongs_to :tradition
	belongs_to :picture
	
	validates :rating_number, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
	
	def rating_percent
		percent = (rating_number/5.0)*100
		percent.to_s+'%'
	end
end
