module Equipo1.Iteracion1Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "Ratonsitos" $ do
    let cerebro = UnRaton "cerebro" 13 1.3 ["rabia"] ("normal",1)
    context "equipo 1" $ do
      context "iteracion 1 " $ do
        it "la funcion modificarNombre aplicada con ++['a'] agrega una 'a' alfinal del nombre del raton" $ do
            (modificarNombre (++ ['a']) cerebro)  `shouldBe` (cerebro{nombre = "cerebroa"} :: Raton)
