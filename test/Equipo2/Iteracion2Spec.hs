module Equipo2.Iteracion2Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 2" $ do
    context "iteracion 2 " $ do
      context "si el raton pesa mas de 2 kilos" $ do
        let cerebro = UnRaton "cerebro" 13 2.1 ["rabia", "vejez"] ("normal",1)
        it "la alcachofa le hace perder el 10% de su peso" $ do   
          (alcachofa  cerebro)  `shouldBe` (cerebro{peso = 2.1 * 0.9} :: Raton)
      context "si el raton pesa menos de 2 kilos" $ do
        let cerebro = UnRaton "cerebro" 13 1.3 ["rabia", "vejez"] ("normal",1)
        it "la alcachofa le hace perder el 5% de su peso" $ do  
          (alcachofa  cerebro)  `shouldBe` (cerebro{peso = 1.3 * 0.95} :: Raton)
      