class ArticlesController < ApplicationController
	before_filter :authenticate_user!

	# return an HTML form for creating a new article
	def new
		@board_id = params[:board_id]
	end
	# return an HTML form for editing an article
	def edit
	end

	# CRUD actions
	def create

		# TODO:

		redirect_to :back
	end	
	def update
	end
	def destroy
	end
end
