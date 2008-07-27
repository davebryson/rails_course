
require 'active_record'

# Defines the model
class Article < ActiveRecord::Base
end

# Create the connection
ActiveRecord::Base.establish_connection(
                                        :adapter  => "mysql",
                                        :host     => "localhost",
                                        :username => "root",
                                        :password => "",
                                        :database => "myblog_development"
                                        )


# You can write your code below:
# a = Article.find(:all)

# Or run from irb
# require 'ar_standalone.rb'
