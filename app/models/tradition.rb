class Tradition < ActiveRecord::Base
	belongs_to :user
	has_many :pictures
	mount_uploader :url, PictureUploader

	validates :name, :description, presence: true
	validates :name, uniqueness: true
	
	


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
