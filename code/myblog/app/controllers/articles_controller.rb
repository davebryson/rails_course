class ArticlesController < ApplicationController
  # Make sure a user is logged in if they try to create a new article 
  before_filter :check_user, :except => [:index, :show]
  
  
  # List all the Articles in chronological order
  def index
    @articles = Article.find(:all, :order => "created_at DESC")
    
    # This is *really* not needed as the template name is the same as the action
    render :action => :index
  end
  
  def show 
    @article = Article.find(params[:id])
    
    # Example of responding with other formats for services!
    respond_to do |format|
      format.html
      format.xml{ render :xml => @article.to_xml }
      format.json{  render :json => @article.to_json }
    end
  end
  
  def new
    @article = Article.new
  end
  
  def create
    # Associate the article with the logged in user
    user = User.find(session[:user_id])
    @article = user.articles.build(params[:article])
    
    if @article.save
      flash[:notice] = "Article created!"
      redirect_to :action => :index
    else
      flash[:notice] = "Problem creating the Article"
      render :action => :new
    end
  end
  
 end
