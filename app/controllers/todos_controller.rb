class TodosController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user_id = params[:user_id]
    @todo.completed = false
    if @todo.save
      redirect_to user_path(@todo.user_id)
    else
      render 'todos/new', status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private
    def todo_params
      params.require(:todo).permit(:name)
    end
end
