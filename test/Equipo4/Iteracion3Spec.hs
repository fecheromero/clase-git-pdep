module Equipo4.Iteracion3Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 4" $ do
    let cerebro = UnRaton "cerebro" 13 1.3 ["obesidad"] ("normal",1)
    context "iteracion 3 " $ do
      context "al aplicarle un repressitol a un raton sin enfermedades" $ do 
        let cerebro = UnRaton "cerebro" 13 1.3 [] ("normal",1)
        it "se olvida su nombre" $ do
            (repressitol cerebro)  `shouldBe` (cerebro{nombre = ""}:: Raton)
      context "al aplicarle un repressitol a un raton con enfermedades" $ do
        let cerebro = UnRaton "cerebro" 13 1.3 ["rabia", "obesidad"] ("normal",1)
        it "se cura de la ultima contraida" $ do
            (repressitol cerebro)  `shouldBe` (cerebro{enfermedades = ["obesidad"]} :: Raton)
          