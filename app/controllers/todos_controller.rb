class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.completed = false
    if todo.save
      redirect_to user_path(@todo.user_id)
    else
      render 'show', status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private
    def todo_params
      params.require(:todo).permit(:name, :completed, :user_id)
    end
end
