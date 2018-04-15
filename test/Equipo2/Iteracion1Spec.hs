module Equipo2.Iteracion1Spec where
    import Lib 
    import Test.Hspec
    
    spec :: SpecWith ()
    spec = do
      describe "equipo 2" $ do
        let cerebro = UnRaton "cerebro" 13 1.3 ["rabia"] ("normal",1)
        context "iteracion 1 " $ do
          it "la funcion modificarEdad aplicada con (/2) reduce a la mitad la edad del raton" $ do
              (modificarEdad (/2) cerebro)  `shouldBe` (cerebro{edad = 6.5} :: Raton)
     