
# Examples...

balance = 1001


if balance > 1000 
  puts "good"
else
#elsif
  puts "bad"
end

puts "I've got some money" if balance > 1000


unless balance == 0
  puts "I'm rich!"
end

puts "I'm rich" unless balance == 0

day_of_the_week = "monday"

case day_of_the_week
  when "monday"
  puts "it's mon"
  when "tuesday"
  puts "it's tues"
  else
  puts "you get the idea"
end

begin
  # try to exec something that doesn't exist
  do_somthing
rescue Exception => e
  puts "ouch! :#{e.message}"
end
  
