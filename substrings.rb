# Counts the occurrences of a given dictionary's words within a string.
# Case-insensitive.
#
# @param str [String] The text to search through
# @param dictionary [Array<String>] The list of valid substrings
# @return [Hash] A hash where keys are substrings and values are counts
def substrings(str, dictionary)
  results = dictionary.reduce(Hash.new) do |counts_hash, substring|
    substring_count = str.downcase.scan(substring).length
    unless substring_count == 0
      counts_hash[substring] = substring_count
    end
    counts_hash
  end
  results
end
