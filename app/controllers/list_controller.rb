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
    @list = List.find_by_id(params['id'])
    
    if @id.to_i > 10
      @message = "too many tasks"
    #elsif @id.is_a("String")
     # @message = "didn't you want to put a number?"
    else
      @message = "it's gonna be a breeze"
    end
    
  end
  
  def new
  end
  
  def create
    l = List.new
    l.name = params['name']
    l.save
    redirect_to "/list/#{ l.id }"
  end
  def edit
    @list = List.find_by_id(params['id'])
  end
  def update
    l = List.find_by_id(params['id'])
    l.name = params['name']
    l.save
    redirect_to "/list/#{l.id}"
  end
end