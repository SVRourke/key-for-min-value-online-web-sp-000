# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  buff_key = ""
  buff_val = ""
  
  name_hash.each do |key, value|
    if buff_val
      if key < buff_val
        buff_key = key
        buff_val = value
      end
    else 
      buff_val = value
      buff_key = key
    end
  end
  buff_key
end

puts key_for_min_value({"a" => 1, "b" => 2, "c" => 3})