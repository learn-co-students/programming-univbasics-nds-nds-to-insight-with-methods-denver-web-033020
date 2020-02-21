$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #pp director_data[0][:movies]
    director_total = 0 
    director_index = 0 
    while director_index < director_data.length do 
      director_total = 0 
      inner_index = 0 
      while inner_index < movies.length do 
        director_total += movies[inner_index][:worldwide_gross]
        inner_index += 1 
      end 
      director_index += 1 
    end
    director_total.to_i
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
directors_totals = {}
def directors_totals(nds)
  director_index = 0 
  while director_index < nds.length do 
     total = 0 
     total = gross_for_director(director_index)
     directors_totals[nds[director_index][:name] = total]
     director_index += 1 
  end 
    director_index += 1 
    return directors_totals
end



