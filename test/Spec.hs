import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import RomanNumerals

main :: IO ()
main = hspec $ do
  describe "RomanNumerals" $ do
    1 `convertsTo` "I"
    2 `convertsTo` "II"
    3 `convertsTo` "III"
    4 `convertsTo` "IV"
    5 `convertsTo` "V"
    7 `convertsTo` "VII"
    9 `convertsTo` "IX"
    19 `convertsTo` "XIX"
    42 `convertsTo` "XLII"
    54 `convertsTo` "LIV"
    92 `convertsTo` "XMII"
    101 `convertsTo` "MI"

convertsTo number numeral =
  it ("converts " ++ (show number) ++ " -> " ++ numeral) $ do
    convert number `shouldBe` numeral