module RomanNumerals where
  type Numeral = String

  convertToRomanNumberals :: Int -> Numeral
  convertToRomanNumberals 0 = ""
  convertToRomanNumberals 1 = "I"
  convertToRomanNumberals 2 = "II"
  convertToRomanNumberals 5 = "V"
