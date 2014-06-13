class BoardsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]

  # return an HTML form for creating a new board
  def new
    render layout:"user"
  end
  # return an HTML form for editing an board
  def edit
    @board = Board.find params[:id]
    render layout:"user"
  end
  # return specific instance
  def show
    @board = Board.find(params[:id])
    @articles = Article.where(:board_id=>params[:id]).page(params[:page]||1).per 3
  end

  # CRUD actions
  def create
    a = Board.new  secure_board
    a.user_id = current_user.id
    a.save!

    redirect_to '/backoffice'
  end 
  def update
    board = Board.update params[:id], secure_board
    redirect_to '/backoffice'
  end
  def destroy
    Board.destroy(params[:id])
    redirect_to '/backoffice'
  end

private
  def secure_board
    params[:board].slice(:name)
  end
end
