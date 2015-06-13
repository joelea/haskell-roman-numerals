module RomanNumerals where
  type Numeral = String

  convertToRomanNumberals :: Int -> Numeral
  convertToRomanNumberals number = ['I' | i <- [1..number]]