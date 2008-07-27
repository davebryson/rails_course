class Article < ActiveRecord::Base
  # Each Article belongs to a User
  belongs_to :user
  
  # An article must have a title and some body 
  validates_presence_of :title, :message => "Please include a Title"
  validates_presence_of :body
end
