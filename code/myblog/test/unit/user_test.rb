require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Example of testing the User model (see fixtures/user.yml
  def test_authenticate_pass
    assert_not_nil User.authenticate('bob','bob')
  end
  
  def test_authenticate_fail
    assert_nil User.authenticate('blah','blah')
  end
end
