$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
filmsMade = director_data[:movies].length
  movies_index = 0 
  gross_index = 0

    while gross_index < filmsMade do
      director_gross = director_data[:movies][gross_index][:worldwide_gross]
      movies_index += director_gross 
      gross_index += 1
    end 

  movies_index
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  name_index = 0
  result = {}
  while name_index < nds.length do 
    filmsMade = nds[name_index]
    total_gross = gross_for_director(filmsMade)
    director_name = nds[name_index][:name]
    result[director_name] = total_gross
    name_index += 1 
  end

  result
    
    
  end 
    
    
 