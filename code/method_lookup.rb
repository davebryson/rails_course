module FindMe
  
  def here_i_am
    puts "bam!"
  end
end

class Test1
  include FindMe
end

class Test2 < Test1
end

# 1. Does Test2 define here_i_am?
# 2. Does Test2 mixin a module?
# 3. Does Test3 have a superclass that defines it?
# 4. Does the superclass mixin with the method?
# 5. Then...module, kernel, method_missing

a = Test2.new
a.here_i_am

