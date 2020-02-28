$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'
pp directors_database

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    my_index = 0 
    director_sum = 0
  #binding.pry 
    while my_index < director_data[:movies].length do 
    director_sum += director_data[:movies][my_index][:worldwide_gross]
    my_index += 1
  end 
  director_sum
end

def directors_totals(nds)
  total_hash = {} 
  array_index = 0 
   while array_index < nds.length do
    director_data = nds[array_index]
    director_sum = 0
    director_name = nds[array_index][:name]
    director_sum += gross_for_director(director_data)
    total_hash[director_name] = director_sum
    array_index +=1 
  end 
  total_hash 
end
