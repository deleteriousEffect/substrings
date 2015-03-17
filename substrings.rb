# Takes a string an converts it into an array of its substrings
def substringify(string)
  # Removes all non word characters from the string
  string.tr!(string.scan(/\W/).to_s, '')

  string_len = string.length
  substrings = []

  (0..string_len).to_a.product((0..string_len).to_a).each do |a|
    substrings << string[a[0], a[1]] if a[0] < a[1]
  end
  substrings
end

#puts substringify("Howdy partner, sit down! How's it going?").join('|'), "\n"
#puts substringify("Howdy partner").join('|'), "\n"

# Takes a string and a dictionary of possible substrings and returns
# elements of the dictionary that are substrings of the string.
def substring_matches(string, dictionary)
  # Joins the array of string's substrings with | so that the regular
  # expression matches any instance of those substrings in the dictionary.
  dictionary.to_s.scan(/\b(#{substringify(string).join('|')})\b/i).flatten
end

test_dictionary = %w(below down go going horn how howdy
                     it i low own part partner sit)

#print substring_matches('below', test_dictionary)

print substring_matches("Howdy partner, sit down! How's it going?", test_dictionary)
