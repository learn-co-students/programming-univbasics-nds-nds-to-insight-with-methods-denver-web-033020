$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def gross_for_director(director_data)
    gross_dir = 0
    title_index =0 
    while title_index<director_data[:movies].length do
      gross_dir += director_data[:movies][title_index][:worldwide_gross]
      title_index+=1 
    end
  gross_dir
end

def directors_totals(nds)
  results ={}
  
  director_index =0 
  while director_index < nds.length do 
    gross_dir = gross_for_director(nds[director_index])
    results[nds[director_index][:name]] =gross_dir
    director_index+=1 
  end
  results
end
  

























