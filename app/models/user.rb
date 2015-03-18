class User < ActiveRecord::Base
	
	has_many :traditions
	has_many :likes
	has_many :pictures
	has_secure_password
	validates :first_name, :last_name, :major, presence: true
	validates :email, uniqueness: true
	validates :email, length: { minimum: 7 }
	
	def name
		first_name+" "+last_name
	end
end
