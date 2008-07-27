require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase

  # Test the index works
  def test_list_articles
    get :index
    # HTTP Status code is 200
    assert_response :success
    # Make sure the articles variable is set
    assert_not_nil assigns(@articles)
  end
  
  # Test requires login for new
  def test_login_required_for_new
    get :new
    # Should be redirected to the login page
    assert_redirected_to :controller => 'accounts', :action => 'login'
  end
  
 end
