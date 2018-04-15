module Equipo3.Iteracion2Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 3" $ do
    let cerebro = UnRaton "cerebro" 13 1.3 ["rabia", "vejez"] ("normal",1)
    let pinky = UnRaton "pinky" 0 0 [] ("piola",0)
    context "iteracion 2 " $ do
      it "al aplicarle una hierbaZord a un raton lo transforma en pinky" $ do
          (hierbaZord  cerebro)  `shouldBe` (pinky{peso = peso cerebro} :: Raton)
