require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
 
  # Test that validation fails if a title and body are missing
  def test_validation_fails
    a = Article.new
    # Make sure the save fails by returning false
    assert_equal false, a.save
    # Ensure there are errors
    assert a.errors.size > 0
  end
  
end
