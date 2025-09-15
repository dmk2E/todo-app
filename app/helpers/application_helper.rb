module ApplicationHelper
  def full_title(title = '')
    base_title = 'Todo App'
    if title == ''
      base_title
    else
      "#{title} | #{base_title}"
    end
  end
end
