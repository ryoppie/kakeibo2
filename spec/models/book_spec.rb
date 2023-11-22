require 'rails_helper'

RSpec.describe Book, type: :model do
  before do
    @book = FactoryBot.build(:book)
  end
  describe '家計簿新規登録' do
    it '全ての入力事項が、存在すれば登録できる' do
      expect(@book).to be_valid
    end
  context '家計簿が新規登録できないとき' do
    it '年度が空では登録できない' do
      book = Book.new(year: nil)
      expect(book).not_to
    end

    it '月が空では登録できない' do
      book = Book.new(month: nil)
      expect(book).not_to be_valid
    end

    it '日が空では登録できない' do
      book = Book.new(day: nil)
      expect(book).not_to be_valid
    end

    it '区分が空では登録できない' do
      book = Book.new(category: nil)
      expect(book).not_to be_valid
    end

    it '金額が空では登録できない' do
      book = Book.new(amount: nil)
      expect(book).not_to be_valid
    end
  end
 end
end