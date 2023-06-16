class BooksController < ApplicationController

  def start
  end

  def index
    image_paths = [
      "january.jpg",
      "february.jpg",
      "march.jpg",
      "april.jpg",
      "may.jpg",
      "june.jpg",
      "july.jpg",
      "august.jpg",
      "september.jpg",
      "october.jpg",
      "november.jpg",
      "december.jpg"
    ]
    current_month = Time.current.month
    @bg_image_path = image_paths[current_month - 1]

    @selected_year = params[:year] || Time.current.year
    month = params[:month] || Time.current.month
  
    @books = Book.where(year: @selected_year, month: month)
    @months = Book.distinct.pluck(:month)
    @total_amount = @books.sum(:amount)
  
    @available_years = Book.distinct.pluck(:year)

    @bg_image_path = image_paths[month.to_i - 1] if month.present? && month.to_i.between?(1, 12)
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
