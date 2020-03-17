$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
 def gross_for_director(nds) 
   
   
   #binding.pry 
   

 
  director_index = 0
  totals = 0
   
  while director_index < nds[:movies].length do
   totals += nds[:movies][director_index][:worldwide_gross]
    director_index += 1 
    
  end
  
  return totals

end
    #while movie_index < nds[director_index][:movies].length do
     # totals[director_name] += nds[director_index][#:movies][movie_index][:worldwide_gross]
      #movie_index += 1
    #end

    #director_index += 1
  #end

  #totals
#end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
#def gross_for_director(director_data)

#end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0 
  while director_index < nds.length do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1 
  end
  
  return result
end
