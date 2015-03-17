# Takes a string and a dictionary of possible substrings and returns
# elements of the dictionary that are substrings of the string
# and how many times they are present in the dictionary.
def substring_matches(string, dictionary)
  number_of_substring_matches = {}

  # If a word from the dictionary appears as a substring of the string
  # add it to the hash with its value being the number of times it appears.
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
