module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if not page_title.empty?
      page_title + " | " + base_title
    else
      base_title
    end

  end
end
