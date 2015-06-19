module RomanNumerals where
  import Data.List

  type Numeral = String
  type MixedNumber = (String, Int)

  convert :: Int -> Numeral
  convert n = concat $ unfoldr nextRomanNumber n

  nextRomanNumber :: Int -> Maybe MixedNumber
  nextRomanNumber n
    | n >= 5 = Just ("V", n - 5)
    | n >= 1 = Just ("I", n - 1)
    | otherwise = Nothing

