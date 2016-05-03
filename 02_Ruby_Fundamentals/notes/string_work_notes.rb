greeting = "What's good"
name = "Njenga"
team = "Timberwolves"
team1 = "Minnesota"
##team1.prepend ( "Timberwolves")


## 1)length method tells you how many characters are in a string
puts "The length method counts the number of characters in #{name}. The length count for my name  is #{name.length}"


## 2).prepend will add a string to a previously defined string
puts "Prepend will get team name right. If i have #{team1} i can use prepend to get #{team1} #{team1.prepend ("Timberwolves")} "


##3 << concatenates two strings
puts" If I have #{greeting} and #{name}, I can use << to get #{greeting}" << "stuff"

#4 .strip can be used to cleanse of spaces
puts "I am going to use .strip to cleanse my name of spaces: see #{name.strip}"

#5 .chars returns the characters in a string
puts ".chars will return the characters in a string such as #{name.chars}"
