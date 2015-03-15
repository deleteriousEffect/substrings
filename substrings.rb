# Takes a string an converts it into an array of its substrings
def substringify(string)
  string_len = string.length
  substrings = []

  substring_first_index = 0
  substring_last_index = 0

  while substring_last_index < string_len
    substrings << string[substring_first_index..substring_last_index]
    substring_last_index += 1
  end
  while substring_first_index < string_len
    substrings << string[substring_first_index..substring_last_index]
    substring_first_index += 1
  end
  substrings.uniq
end