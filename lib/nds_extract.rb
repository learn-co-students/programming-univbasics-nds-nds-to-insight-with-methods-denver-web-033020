$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  movie_index= 0
  gross_director= 0
  while movie_index<director_data[:movies].length do
    gross_director = gross_director+ director_data[:movies][movie_index][:worldwide_gross]
    movie_index+=1
  end
  gross_director
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  results = { }
  director_index =0 
  gross_director =0 
  while director_index<nds.length do
    key = nds[director_index][:name]
    director_data= nds[director_index]
    value= gross_for_director(director_data)
    results[key] = value
    director_index+=1
  end
  results
end
