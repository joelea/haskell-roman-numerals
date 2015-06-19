module RomanNumerals where
  import Data.List

  type Numeral = String
  type MixedNumber = (String, Int)

  data RomanDigit = RomanDigit String Int

  digits = reverse [
    RomanDigit "I" 1,
    RomanDigit "V" 5
    ]

  convert :: Int -> Numeral
  convert n = concat $ unfoldr nextRomanNumber n

  nextRomanNumber :: Int -> Maybe MixedNumber
  nextRomanNumber n = fmap next $ find isUsableDigit digits
    where
      isUsableDigit (RomanDigit _ number) = number <= n
      next (RomanDigit numeral number) = (numeral, n - number)

