class Picture < ActiveRecord::Base
	belongs_to :user
	belongs_to :tradition
	has_many :likes
		
	validates :url, presence: true
	mount_uploader :url, PictureUploader
end
