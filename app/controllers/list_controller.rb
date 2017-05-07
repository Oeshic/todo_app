class ListController < ApplicationController
  def index
    @items = []
  end
  
  def p_plus
    @counter = 0
    redirect_to '/list/index'
  end
  
  def show
    @id = params['id']
    
    if @id.to_i > 10
      @message = "too many tasks"
    elsif @id.class == "String"
      @message = "didn't you want to put a number?"
    else
      @message = "it's gonna be a breeze"
    end
    
  end
end