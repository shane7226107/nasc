class ArticlesController < ApplicationController
	before_filter :authenticate_user!

	# return an HTML form for creating a new article
	def new
		@board_id = params[:board_id]
		render layout:"user"
	end
	# return an HTML form for editing an article
	def edit
		render layout:"user"
	end

	# CRUD actions
	def create
		a = Article.new params[:article]
		a.save!

		redirect_to '/backoffice'
	end	
	def update
	end
	def destroy
	end
end
