class StaticController < ApplicationController
	def welcome
		@traditions = Tradition.all
	end

end
