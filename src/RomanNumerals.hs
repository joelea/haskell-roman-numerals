module RomanNumerals where
  type Numeral = String

  convertToRomanNumberals :: (Num a) => a -> Numeral
  convertToRomanNumberals _ = "I"