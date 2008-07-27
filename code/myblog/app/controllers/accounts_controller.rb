class AccountsController < ApplicationController
  
  # Attempt to login the user
  def login
    # No GETS allowed!
    return unless request.post?
    
    if u = User.authenticate(params[:login], params[:password])
      flash[:notice] = "Logged in successfully"
      session[:user_id] = u.id
      redirect_to :controller => 'articles', :action => 'index'
    else
      flash[:notice] = "Bad Username or Password. Please try again."
    end
  end

  # Log the user out by clearing the session
  def logout
    # ActionController method
    reset_session
    flash[:notice] = "You have been logged out"
    redirect_to :controller => 'articles', :action => 'index' 
  end
end
