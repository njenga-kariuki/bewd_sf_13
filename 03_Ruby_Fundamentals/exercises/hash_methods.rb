
item = {}
item[:diet_coke] = { size: 20, size_type: "ounce"}

item[:sprite_single] = { size:24, size_type: "ounce"}

cars = {}
cars= {"tesla" => 80000, "ford" => 30000 }


categories = []
categories["sports"] = {vendor_manager: "Brandon Ingram", year_started: "2012"}
categories["home"] = {vendor_manager: "Katie Bulloch", year_started: "2016"}

#####PRACTICE#####

##length : Will tell you the number of key/value pairs
#puts "The .length method will tell you the number of key/value pairs you have. In this case I have #{item.length}"

#.merge -- will comebine two hashes into one
#puts "The .merge will allow you to combine two hashes into one. Here is an example that combines Items into categories: #{item.merge(categories)}"

# select {} allows  you to filter values a hash for specific criteria
puts cars.select {|car, price| price > 20000 && car.eql?("tesla")}
puts categories.select {|cat,vm| cat.eql?("home")}

## .keys -- will return all the keys associated with the hash
#puts "For the hash categories the .keys method can be used to show them. See! #{categories.keys}"

## .values --  returns the values associated with the hash
#puts "For the hash categories the .values method can be used to show them. See! #{categories.values}"

##.has_key -- allows you to check, if a certain object exists in a hash
#puts "The .has_keys can be used to search for a key in a hash. Let's see if I have a life: #{categories.has_key?("life")}"
 puts categories.keys
 puts categories.values
 categories.each {|k,v| puts "#{v}" if v}
