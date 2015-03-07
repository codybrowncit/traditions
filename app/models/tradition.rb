class Tradition < ActiveRecord::Base
	belongs_to :user
	has_many :pictures
	has_many :ratings
	

	validates :name, :description, presence: true
	validates :name, uniqueness: true
	
	
	def rating_percent
		percent = (rating/5.0)*100
		percent.to_s+'%'
	end

	def avg_rating
		total = 0
		count = 0
		ratings.each do |r|
			total += r.rating_number
			count += 1
		end
		if count != 0
 			total/=count
 		end
 		total.to_s+"star.png"

	end

end
