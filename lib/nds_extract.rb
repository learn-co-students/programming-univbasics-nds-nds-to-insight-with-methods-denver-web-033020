$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def gross_for_director(director_data)
  gross_index = 0
  gross_total = 0
  while gross_index < director_data[:movies].length do
    gross_total += director_data[:movies][gross_index][:worldwide_gross]
    gross_index += 1
  end  
  
  return gross_total
end


def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    result[nds[director_index][:name]] = gross_for_director(nds[director_index]) 
    director_index += 1
  end  
  
  return result
end
