class UsersController < ApplicationController

  def show
    @books = Book.all
    @user = User.find(params[:id])
    @book = Book.new
  end

  def index
    @users = User.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "You have update user successfully."
    else
      render request.referer
    end
  end


  private

  def user_params
     params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
