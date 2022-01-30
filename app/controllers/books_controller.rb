class BooksController < ApplicationController
  before_action :get_user

  def new
    @book = @user.books.build
  end

  def create
    @book = @user.books.create(book_params)
    if @book.save
      redirect_to @user
    else
      render :new
    end
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :status)
    end
    def get_user
      @user = User.find(params[:user_id])
    end
end
