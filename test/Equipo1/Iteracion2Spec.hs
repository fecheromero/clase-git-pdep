module Equipo1.Iteracion2Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 1" $ do
    let cerebro = UnRaton "cerebro" 13 1.3 ["rabia", "vejez"] ("normal",1)
    context "iteracion 2 " $ do
      it "al aplicarle una hierbaVerde de vejez a un raton se reduce su edad a la mitad" $ do
          (hierbaVerde "vejez" cerebro)  `shouldBe` (cerebro{edad = 6.5} :: Raton)
      it "al aplicarle una hierbaVerde de 'bia' a un raton con rabia se cura de rabia" $ do
        (hierbaVerde "bia" cerebro)  `shouldBe` (cerebro{enfermedades = ["vejez"]} :: Raton)
