require 'active_resource'
class User < ActiveResource::Base
  self.site="http://localhost:3000"
end
