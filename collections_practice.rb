require "pry"

def begins_with_r(array)
first_r = true
  array.each do |element|
    if element[0] != "r"
      first_r = false
    end
  end
  first_r
end# your code goes here

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include?("a")
      new_array << element
    end
  end
  new_array.compact
end

def first_wa(array)
  array.each do |element|
    if element.match?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a?(String)
  end

end

def count_elements(array)
  array.each do |original_hash|
      original_hash[:count] = 0
      name = original_hash[:name]
      array.each do |next_hash|
        if next_hash[:name] == name
          original_hash[:count] += 1
        end
      end
    end.uniq
  end

  def merge_data(struc1, struc2)
    struc2[0].map do |name, prop|
      new_hash = {}
      struc1.each do |new_attr|
        if new_attr[:first_name] == name
          new_hash = prop.merge(new_attr)
        end
      end
      new_hash
    end
  end

  def find_cool(hash)
    new_array = []
    hash.each do |name|
      if name[:temperature] == "cool"
        new_array << name
    end    #binding.pry
    end
    new_array
  end

  def organize_schools(schools)
    organized_schools = {}
    schools.each do |name, data|
      location = data[:location]
      #organized_schools = location
      if organized_schools[location]
    organized_schools[location] << name
  else
    organized_schools[location] = []
    organized_schools[location] << name
      end
    end
    organized_schools
end
