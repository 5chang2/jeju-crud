class BoardController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def index
    @boards = Board.all
  end
  
  def new
  end
  
  def create
    @title = params[:title]
    @content = params[:content]
    
    @board = Board.new
    @board.title = @title
    @board.content = @content
    @board.save
    
    redirect_to '/'
  end
  
  def show
    @board = Board.find(params[:id])
  end
  
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    
    redirect_to '/'
  end
end
