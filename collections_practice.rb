#require "pry"

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

  def merge_data(structure1, structure2)
    new_hash = {}
    structure2[0].map do |name, value|
      new_hash[name] = value
      #binding.pry
      structure1.each do |data|
          #binding.pry
        if structure1[data] == name
          value.merge(data)

        end
      end
      new_hash

    end

  end
