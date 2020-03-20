$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
   i = 0
   #we have to go through each movie's gross amnt, so this increments by movie and starts at 0 because its the first index
  total = 0
  #total gross amnt
  while i < director_data[:movies].length do
    #ensures we do this for every movie
  total += director_data[:movies][i][:worldwide_gross]
  #we add the amnt of the first index (0) to the total
  i += 1
  end
total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
    result = {}
  i = 0
  while i < nds.size do
    #runs for each director
    director = nds[i]
    #starts at first director
    result[director[:name]] = gross_for_director(director)
    #hash has director's name and the previous method for a given director
    i += 1
  end
  result
end
