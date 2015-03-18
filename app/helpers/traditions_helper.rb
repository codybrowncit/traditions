module TraditionsHelper
		def completed(tradition)
		tradition.pictures.each do |p|
			if p.user.email == current_user.email
				return true
			end
		end
		return false
	end
end