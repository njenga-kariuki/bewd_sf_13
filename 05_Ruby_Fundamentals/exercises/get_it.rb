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

require 'typhoeus'#library that faciltates http requests
require 'pry'
#require 'pry-byebug'
require 'json'

def connect_to_api(url)
  response = Typhoeus.get(url)
  json_response = JSON.parse(response.body)

end

def stories(json_response)
  stories = json_response["data"]["children"] ##this drills into the json to the point the content begins
  stories.each do |story|
    create_story_hash(story["data"])   ##this goes through each "data" section which contains a story and triggers the next method
  end
end

def create_story_hash(story)
  story_hash = {title: story["title"], upvotes: story["ups"], category: story["subreddit"]}
  create_story_array(story_hash)
end

def create_story_array(story_hash)
  story_array = []
  puts story_array.push(story_hash)
end


url ='http://www.reddit.com/.json'
json_response = connect_to_api(url)


stories(json_response)
