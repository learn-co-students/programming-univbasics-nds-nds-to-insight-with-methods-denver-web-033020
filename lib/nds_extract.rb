$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_gross = 0
  i = 0
  
      while i < director_data[:movies].length do
        total_gross += director_data[:movies][i][:worldwide_gross]
        i+=1
      end
      
  return total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  i = 0
  
  while i < nds.length do
    director = nds[i]
    result[director[:name]]=gross_for_director(director)
    i+=1
  end
  
  return result
end
