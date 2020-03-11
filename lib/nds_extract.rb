$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  key_index = 0

  while key_index < director_data[:movies].count do
	   total += director_data[:movies][key_index][:worldwide_gross]
	   key_index += 1
  end
  total
end

# Write a method that, given an NDS creates a new Hash
def directors_totals(nds)
  directors_totals = {}
  director_data = 0
  while director_data < nds.length do
    director_hash = nds[director_data]
    directors_totals[director_hash[:name]] = gross_for_director(director_hash)

    director_data += 1
  end
  return directors_totals
end
