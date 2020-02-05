$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)

  
  col = 0
  value = 0
  
  while col < director_data[:movies].length do
  
    value = value + director_data[:movies][col][:worldwide_gross]
    # puts director_data[row][:movies][col][:worldwide_gross]
    # puts value
    col += 1
  end
  # puts value
  value 
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  
  result = {}
  directorValue = 0
  row = 0
   while row < nds.length do
    key = nds[row][:name]
    director_data = nds[row]
    directorValue = gross_for_director(director_data)
    result[key] = directorValue
    row += 1

    end
  puts result
  result
end
