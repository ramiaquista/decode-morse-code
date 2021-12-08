def decode_char(char)
  morse_letter = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                   '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
                   '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
                   '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
                   '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
                   '---..' => '8', '----.' => '9', '-----' => '0' }
  morse_letter[char]
end

def decode_word(word)
  result = ''
  word.split.each do |letter|
    result = "#{result}#{decode_char(letter)}"
  end
  result
end

def decode(code)
  traduced_code = ''
  code.split('   ').each do |word|
    traduced_code = "#{traduced_code}#{decode_word(word)} "
  end
  traduced_code.rstrip
end

# puts decode_char('.-') => A
# puts decode_word('-- -.--') => MY
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...') # => A BOX FULL OF RUBIES
