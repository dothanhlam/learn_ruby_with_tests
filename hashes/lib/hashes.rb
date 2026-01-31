NUMBERS_TO_WORDS = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen',
  20 => 'twenty',
  30 => 'thirty',
  40 => 'forty',
  50 => 'fifty',
  60 => 'sixty',
  70 => 'seventy',
  80 => 'eighty',
  90 => 'ninety'
}

def number_to_sentence(number)
  return NUMBERS_TO_WORDS[number] if NUMBERS_TO_WORDS.key?(number)

  if number < 100
    tens = (number / 10) * 10
    remainder = number % 10
    return "#{NUMBERS_TO_WORDS[tens]} #{NUMBERS_TO_WORDS[remainder]}"
  end
  
  if number < 1000
    hundreds = number / 100
    remainder = number % 100
    
    result = "#{NUMBERS_TO_WORDS[hundreds]} hundred"
    if remainder > 0
      result += " and #{number_to_sentence(remainder)}"
    end
    return result
  end
end
