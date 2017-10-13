class HomesController < ApplicationController
  
  def new
    @todo = Todo.new
  end

  def show
    @cats = Cat.all
    @todos = Todo.all
    @users = User.all
  end

  def create
    @todo = Todo.create(tasks: params[:todo][:tasks], finished: params[:todo][:finished])
    redirect_to "/"
  end
end