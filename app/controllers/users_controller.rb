class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user_name = User.find(params[:id]).name
    @todos = Todo.where(user_id: params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to the Todo App!'
      redirect_to @user
      # redirect_to user_url(@user)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
