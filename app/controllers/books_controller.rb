class BooksController < ApplicationController
  def index
    @books = Book.all
    #@total_amount = @books.sum(:amount)  # 合計金額を計算し、インスタンス変数に格納
  end

  
end
