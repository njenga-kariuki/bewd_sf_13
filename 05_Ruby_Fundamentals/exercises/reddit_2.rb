#1 - Pull the json from the reddit API via
  # http://www.reddit.com/.json
  # http://mashable.com/stories.json
#2 - Parse it using the JSON library
#3 - Find the stories based on techniques used in the code_along (max of 25 provided)
#4 - Create a new story hash out of each story with the following keys :title, :upvotes and :category
    #title, #category and #upvotes may not be the names use
#5 - Add each story to an array
#6 - Print each story from the array on your "Front Page"
#7 - BONUS ### create an 'csv' file using the api data & Ruby's CSV library
     # -> http://ruby-doc.org/stdlib-2.2.2/libdoc/csv/rdoc/CSV.html
         #title, upvote, category are the required columns


require 'Typhoeus'
require 'Pry'
require 'json'

url = 'http://mashable.com/stories.json'

def call_reddit_api(url)
  response = Typhoeus.get(url)
  json_response = JSON.parse(response.body)
  story_hash(json_response)
end

def story_hash(json_response)
  stories = json_response["new"]
  stories.each do |story|
    story_hash(story)
  end
end

def story_hash(story)
  story_hash = {title: story["title"]}
  puts story_hash
end

#########################
call_reddit_api(url)
#puts json_response
