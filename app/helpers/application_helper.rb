module ApplicationHelper
  def category_name(category_id)
    case category_id.to_i
    when 1
      "食費"
    when 2
      "日用品"
    when 3
      "家具・家電"
    when 4
      "家賃・光熱費"
    else
      "未定義"
    end
  end
end
