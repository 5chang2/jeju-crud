class BoardController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def index
  end
  
  def new
  end
  
  def create
    @title = params[:title]
    @content = params[:content]
    puts @title
    puts @content
  end
end
