module RomanNumerals where
  import Data.List

  type Numeral = String
  data RomanNumber = RomanNumber String Int

  convert :: Int -> Numeral
  convert n = case n of
    1 -> "I"
    2 -> "II"