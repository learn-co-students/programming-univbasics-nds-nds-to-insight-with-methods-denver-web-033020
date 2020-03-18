$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
  total = 0
  index = 0

  while index < director_data[:movies].length do
    total += director_data[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end





def directors_totals(nds)
  director_gross = {}
  
  director_count = 0 
  while director_count < directors_database.length do
    movie_count = 0 
    gross = 0 
    while movie_count < directors_database[director_count][:movies].length do
      gross += directors_database[director_count][:movies][movie_count][:worldwide_gross]
      movie_count += 1 
    end 
    director_gross[directors_database[director_count][:name]] =  gross
    

    director_count += 1 
  end
  return director_gross
  
end