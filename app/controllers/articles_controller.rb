class ArticlesController < ApplicationController
	before_filter :authenticate_user!

	# return an HTML form for creating a new article
	def new
	end

	# CRUD actions
	def create
	end
	def edit
	end
	def update
	end
	def destroy
	end
end
