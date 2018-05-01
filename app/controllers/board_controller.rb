class BoardController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def index
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
  end
end
