#!/usr/local/bin/ruby
#
def test_yield
  puts "Start"
  yield
  puts "Stop"
end

test_yield{
  puts "In the middle"
}

def test_two(a)
  puts "Start #{a}"
  yield(a)
  puts "Stop"
end

test_two("Hey") { |x|
  puts "In the middle #{x}"
}

def test_three(z)
  puts "calculating the value of Z times 10"
  result = yield(z)
  puts "the result is #{result}"
end

test_three(10){ |y|
  y * 10
}


def test_four(values)
  result = []
  values.each{ |v|
    result << yield(v)
  }
  result
end

puts test_four([1,2,3,4]){ |x|
  x + 2
}
