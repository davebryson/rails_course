# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  # Helper method used in the layout
  def login_logout_menu
    if session[:user_id]
      bar = []
      bar << link_to("Home", :controller => :articles, :action => "index")
      bar << link_to("Post an Article", :controller => :articles, :action => "new")
      bar << link_to("Logout", :controller => :accounts, :action => "logout")
      bar.join("&nbsp;|&nbsp;")
    else
      link_to "Login", :controller => :accounts, :action => "login"
    end
  end
  
  # Reusable helper for displaying the posted at for posts
  def posted_on(article)
    if article
      "Posted #{time_ago_in_words(article.created_at)} ago by #{article.user.username}"
    end
  end
  
end
