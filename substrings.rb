# Takes a string an converts it into an array of its substrings
def substringify(string)
  # Removes all non word characters from the string
  string.tr!(string.scan(/\W/).to_s, ' ')

  all_indexes_of_string = (0..string.length - 1).to_a
  substrings = []

  # All possible combinations of string's indexes
  substring_indexs = all_indexes_of_string.product(all_indexes_of_string)

  # Push all possible left to right substrings onto substrings array.
  substring_indexs.each do |a|
    substrings << string.slice(a[0]..a[1]) if a[0] <= a[1]
  end
  substrings
end

# Takes a string and a dictionary of possible substrings and returns
# elements of the dictionary that are substrings of the string
# and how many times they are present in the dictionary.
def substring_matches(string, dictionary)
  number_of_substring_matches = {}
  dictionary.each do |word|
    matches_len = string.scan(/#{word}/i).length

    number_of_substring_matches[word] = matches_len if matches_len != 0
  end
  number_of_substring_matches
end

test_dictionary = %w(below down go going horn how howdy
                     it i low own part partner sit)

print substring_matches('below', test_dictionary)

print substring_matches("Howdy partner, sit down! How's it going?", test_dictionary)
