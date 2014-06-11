class ArticlesController < ApplicationController
	before_filter :authenticate_user!

	# return an HTML form for creating a new article
	def new
	end
	# return an HTML form for editing an article
	def edit
	end

	# CRUD actions
	def create
	end	
	def update
	end
	def destroy
	end
end
