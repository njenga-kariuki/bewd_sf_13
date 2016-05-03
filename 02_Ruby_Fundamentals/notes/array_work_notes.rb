boys = ["shane", "vivek", "frankie"]
family = ["naomi", "mom"]
old_school = ["greg", "pat", "pat"]

#size will count the number of objects in the collection
#puts boys.size()


#.push this operates similar to append; it will pass the argument to append to the array
#puts boys.push(family)

#.pop will remove either the last character or a specified number of characters
#puts boys.pop

#.unshift works the same as prepend;; puts things to the beginning
#puts family.unshift(old_school)


#.shift starts at beginning of collection and allows you to pick objects
#puts boys.shift

#.uniq will eliminate duplicate objects

#puts old_school.uniq

#.include will check to see if a value is present

#puts "input a word"
#word = gets.chomp
#puts word.include?("njenga")


puts boys.shuffle.unshift(1)
