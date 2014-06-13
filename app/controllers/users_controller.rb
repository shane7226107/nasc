class UsersController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@all_time_caring = Board.find(1)				
	end
end
