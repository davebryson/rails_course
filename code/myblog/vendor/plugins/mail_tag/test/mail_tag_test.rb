require 'test/unit'

# Require our module
require File.dirname(__FILE__) + '/../lib/mail_tag'

class MailTagTest < Test::Unit::TestCase
  include MailTag # include it
  
  # Should pass
  def test_tag_pass
    assert_equal mail_to("bob@here.com"), "<a href='mailto:bob@here.com'>bob@here.com</a>"
  end
  
  # Better fail
  def test_fail
    assert_equal mail_to("bob_here.com"), "Bad!"
  end
  
end
