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

  def merge_data(arr1, arr2)
    arr2[0].map do |name, prop_hash|
      new_prop_hash = {}
      arr1.each do |new_attr_hash|
        if new_attr_hash[:first_name] == name
          new_prop_hash = prop_hash.merge(new_attr_hash)
        end
      end
      new_prop_hash
    end
  end

  end
