module RomanNumerals where
  import Data.List

  type Numeral = String
  data RomanNumber = RomanNumber { number :: Int
                                 , numeral :: Numeral
                                 } deriving (Show, Eq)

  allNumerals = [
      RomanNumber 5 "V"
    , RomanNumber 4 "IV"
    , RomanNumber 1 "I"]

  nextRomanNumber :: Int -> RomanNumber
  nextRomanNumber n = head $ romanNumbersLessThan n
    where
      romanNumbersLessThan :: Int -> [RomanNumber]
      romanNumbersLessThan n = dropWhile (romanNumberGreaterThan n) allNumerals
      romanNumberGreaterThan :: Int -> RomanNumber -> Bool
      romanNumberGreaterThan n romanNumber = (number romanNumber) > n

  convertToRomanNumberals :: Int -> Numeral
  convertToRomanNumberals 0 = ""
  convertToRomanNumberals n = nextNumeral ++ restOfTheNumerals
    where
      nextNumeral = numeral nextRomanNum
      restOfTheNumerals = convertToRomanNumberals $ n - nextNumber
      nextNumber = number nextRomanNum
      nextRomanNum = nextRomanNumber n
