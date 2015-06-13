module RomanNumerals where
  type Numeral = String

  convertToRomanNumberals :: Int -> Numeral
  convertToRomanNumberals 1 = "I"
  convertToRomanNumberals 2 = "II"