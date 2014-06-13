class ArticlesController < ApplicationController
	before_filter :authenticate_user!, :except => [:show]

	# return an HTML form for creating a new article
	def new
		@board_id = params[:board_id]
		render layout:"user"
	end
	# return an HTML form for editing an article
	def edit
		@article = Article.find params[:id]
		render layout:"user"
	end
	# return specific instance
	def show
		@article = Article.find params[:id]
		render layout:"user"
	end

	# CRUD actions
	def create
		a = Article.new  secure_article
		a.save!

		redirect_to '/backoffice'
	end	
	def update
		article = Article.update params[:id], secure_article
		redirect_to '/backoffice'
	end
	def destroy
		Article.destroy(params[:id])
		redirect_to '/backoffice'
	end

private
  def secure_article
    params[:article].slice( :title, :text, :photo, :embed, :board_id)
  end
end
