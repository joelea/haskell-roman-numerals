import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import RomanNumerals

main :: IO ()
main = hspec $ do
  describe "Prelude.head" $ do
    it "converts 1 -> I" $ do
      convertToRomanNumberals 1 `shouldBe` "I"