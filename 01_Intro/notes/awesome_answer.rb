require 'pry-byebug'
require 'pry'


def awesome (number)
  if number %  3 == 0 && number %  5 == 0 #checks if number is divisble by 3 and 5
    puts "awesome your #{number}!"
  elsif number %  5 ==0
    puts "some"
  elsif number %  3 == 0
    puts "awe"
  else
    puts "Sorry the #{number} is just not that awesome"
  end
end



def awesome_seeker(high_number)
  binding.pry
  1.upto(high_number) do |number|
    binding.pry
    awesome(number)
  end
end

awesome_seeker(100)
