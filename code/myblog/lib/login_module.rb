
# Example of refactoring out code to a separate module
module LoginModule
  
  # Check the user is logged in.
  # include this Module in the Application Controller and add a before_filter
  def check_user
    unless session[:user_id]
      flash[:notice] = "Please login"
      # The requested action never gets called because we render here.
      redirect_to :controller => "accounts", :action => "login"
    end
  end
  
 end
