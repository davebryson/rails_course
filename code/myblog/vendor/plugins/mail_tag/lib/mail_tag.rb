module MailTag
  
  # a simple (and dumb) helper as an example
  def mail_to(addr)
    if addr =~ /(.+)@(.+)\.(.{3})/ 
      "<a href='mailto:#{addr}'>#{addr}</a>"
    else
      "Bad!"
    end
  end
  
end
