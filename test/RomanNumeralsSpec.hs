import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import RomanNumerals

main :: IO ()
main = hspec $ do
  describe "Prelude.head" $ do
    1 `convertsTo` "I"
    2 `convertsTo` "II"
    3 `convertsTo` "III"
    4 `convertsTo` "IV"
    5 `convertsTo` "V"

convertsTo number numeral =
  it ("converts " ++ (show number) ++ " -> " ++ numeral) $ do
    convertToRomanNumberals number `shouldBe` numeral