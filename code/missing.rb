#!/usr/local/bin/ruby
#

# Sample of DSL
class XmlWriter
  
  def make_tag(tag,val)
    puts "<#{tag}>#{val}</#{tag}>"
  end
  
  def method_missing(method,*arg)
    tag = method.id2name
    make_tag(tag,arg.shift)
  end
  
end

x = XmlWriter.new
x.phone("123-4566")
x.name("Dave")
x.company_name("MITRE")

