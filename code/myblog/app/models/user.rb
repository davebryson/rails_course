class User < ActiveRecord::Base
  # Each User may post many articles...
  has_many :articles
  
  # Used for login
  # Ex: User.authenticate('dave','1234')
  def self.authenticate(un,pw)
    User.find_by_username_and_passwd(un,pw)
  end
  
end
