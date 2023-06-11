class BooksController < ApplicationController

  def start
  end

  def index
    @selected_year = params[:year] || Time.current.year
    month = params[:month] || Time.current.month
  
    @books = Book.where(year: @selected_year, month: month)
    @months = Book.distinct.pluck(:month)
    @total_amount = @books.sum(:amount)
  
    @available_years = Book.distinct.pluck(:year)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book_params = params.require(:book).permit(:year, :month, :day, :expend, :category, :amount)
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "家計簿にデータを1件登録しました"
      redirect_to books_path
    else
      flash.now[:alet] = "登録に失敗しました"
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
    @date = params[:date] || @book.created_at
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "データを1件更新しました"
      redirect_to books_path
    else
      flash.now[:alet] = "登録に失敗しました"
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "削除しました"
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:year, :month, :day, :expend, :category, :amount)
  end


end
