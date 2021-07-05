$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # Array => Hash (:name, :movies => Array[Hash{:title,:studio,:worldwide_grosses,:release_year}])
  gross = 0
  i = 0
  while i < director_data[:movies].length do
    movie = director_data[:movies][i]
    gross += movie[:worldwide_gross]
    i += 1
  end
  return gross
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  i = 0
  while i < nds.length do
    name = nds[i][:name]
    gross = 0
    j = 0
    while j < nds[i][:movies].length do
      movie_amt = nds[i][:movies][j][:worldwide_gross]
      gross += movie_amt
      j += 1
    end
    result[name] = gross
    i += 1
  end
  return result
end
