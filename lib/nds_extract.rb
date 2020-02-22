$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #pp director_data
    director_total = 0 
      inner_index = 0 
      movies = director_data[:movies]
      while inner_index < movies.length do 
        #binding.pry
        director_total += movies[inner_index][:worldwide_gross]
        inner_index += 1 
      end 
    director_total.to_i
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_index1 = 0 
  total = 0 
  directors_total = {}
  while director_index1 < nds.length do 
     #binding.pry
     total = gross_for_director(nds[director_index1])
     #pp total
     directors_total[nds[director_index1][:name]] = total
     pp directors_total
     director_index1 += 1 
  end 
    return directors_total
end



