$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # Array => Hash (:name, :movies => Array[Hash{:title,:studio,:worldwide_grosses,:release_year}])
  worldwide_gross = 0
  index = 0
  # loop through directors
  while index < director_data.length do
    # loop through movies
    inner_index = 0
    while inner_index < director_data[index][:movies].length do
      movie_gross = director_data[index][:movies][inner_index][:worldwide_gross]
      worldwide_gross += movie_gross
      inner_index += 1
    end
    index += 1
  end
  return worldwide_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}

  # Array => Hash (:name, :movies => Array[Hash{:title,:studio,:worldwide_grosses,:release_year}])
  # loop through directors
  index = 0
  while index < director_data.length do
    # loop through movies
    director_sum = 0
    inner_index = 0
    while inner_index < director_data[index][:movies].length do
      movie_gross = director_data[index][:movies][inner_index][:worldwide_gross]
      director_sum += movie_gross
      inner_index += 1
    end
    director_name = [director_data][index][:name]
    result[director_name] = director_sum
    index += 1
  end
  nil
end
