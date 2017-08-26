class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
    @author = @book.build_author
    @categories = Category.all
    @memo = @book.build_memo
  end

  def create
    book = Book.new(book_params)
    binding.pry
    book.author = Author.find_or_initialize_by author_params
    if memo_params.present?
      book.memo = Memo.new(memo_params)
    end
    if book.save
      redirect_to action: :index
    else
      @categories = Category.all
      render action: :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :url)
  end

  def memo_params
    params.require(:memo).permit(:memo_1, :memo_2, :memo_3)
  end

  def author_params
    params.require(:author).permit(:name)
  end
end
