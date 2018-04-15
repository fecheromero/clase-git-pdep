module Equipo4.Iteracion2Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 4" $ do
    let cerebro = UnRaton "cerebro" 13 1.3 ["rabia", "vejez"] ("normal",1)
    context "iteracion 2 " $ do
      it "un medicamento sin hierbas devuelve al raton tal como esta" $ do
          (medicamento [] cerebro)  `shouldBe` (cerebro :: Raton)
      it "un medicamento con hierbas aplica consecutivamente el efecto de sus hierbas sobre el raton" $ do
        (medicamento [hierbaZord,alcachofa] cerebro)  `shouldBe` (alcachofa.hierbaZord $ cerebro :: Raton)
