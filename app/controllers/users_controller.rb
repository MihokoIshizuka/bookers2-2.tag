class UsersController < ApplicationController
    
  def show
    @books = Book.all
  end
  
end
