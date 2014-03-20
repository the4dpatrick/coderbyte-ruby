def letter_changes(str)
  alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
  new_string = ''

  str.split(//).each do |letter|
    if letter == 'z'
      new_string << alphabet[0]
    elsif letter == 'Z'
      new_string << alphabet[26]
    elsif letter =~ /[a-zA-Z]/
      new_string << alphabet[alphabet.index(letter) + 1]
    else
      new_string << letter
    end
  end
  return new_string.gsub(/[aiueo]/, &:upcase)
end
