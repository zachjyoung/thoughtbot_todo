class TodosController < ApplicationController 
  def index 
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params[:todo].permit(:description)).save
    redirect_to todos_path 
  end
end
