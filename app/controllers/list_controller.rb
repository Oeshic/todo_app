class ListController < ApplicationController
  def index
    @items = []
  end
  
  def p_plus
    @counter = 0
    redirect_to '/list/index'
  end
end
