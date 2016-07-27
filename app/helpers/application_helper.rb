module ApplicationHelper

  def page_title(separator = " – ")
    ['CareerBuilder Mock Interview Day', content_for(:title) ].compact.join(separator)
  end

  def page_heading(title)
    content_for(:title){ title }
    content_tag(:h1, title)
  end

  def page_description
    ['',content_for(:meta)]
  end
  def page_meta_description(description)
    content_for(:description){ description }
    content_tag(:head, description)
  end

end
