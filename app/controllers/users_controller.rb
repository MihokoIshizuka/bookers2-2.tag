class UsersController < ApplicationController
    
  def show
    @books = Book.all
  end
  
  def index
    @users = User.all
    @book = Book.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
end
