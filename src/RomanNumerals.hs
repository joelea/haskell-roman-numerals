module RomanNumerals where
  import Data.List

  type Numeral = String
  type MixedNumber = (String, Int)

  data RomanDigit = RomanDigit String Int

  digits = reverse [
      RomanDigit "I" 1,
      RomanDigit "IV" 4,
      RomanDigit "V" 5,
      RomanDigit "IX" 9,
      RomanDigit "X" 10,
      RomanDigit "XL" 40,
      RomanDigit "L" 50,
      RomanDigit "XM" 90,
      RomanDigit "M" 100
    ]

  convert :: Int -> Numeral
  convert n = concat $ unfoldr nextRomanNumber n

  nextRomanNumber :: Int -> Maybe MixedNumber
  nextRomanNumber n = fmap next $ find isUsableDigit digits
    where
      isUsableDigit (RomanDigit _ number) = number <= n
      next (RomanDigit numeral number) = (numeral, n - number)

