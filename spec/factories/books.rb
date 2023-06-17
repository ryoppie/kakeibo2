FactoryBot.define do
  factory :book do
    year     { 2023 }
    month    { 6 }
    day      { 16 }
    expend   { '支出' }
    category { 'カテゴリ' }
    amount   { 1000 }
  end
end
