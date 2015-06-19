module RomanNumerals where
  import Data.List

  type Numeral = String
  data RomanNumber = RomanNumber String Int

  convert :: Int -> Numeral
  convert n
    | n >= 1 = "I" ++ convert (n-1)
    | otherwise = ""
