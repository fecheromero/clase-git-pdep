module Equipo3.Iteracion1Spec where
    import Lib 
    import Test.Hspec
    
    spec :: SpecWith ()
    spec = do
      describe "equipo 3" $ do
        let cerebro = UnRaton "cerebro" 13 1.3 ["rabia"] ("normal",1)
        context "iteracion 1 " $ do
          it "la funcion modificarPeso aplicada con (/2) reduce a la mitad el peso del raton" $ do
              (modificarPeso (/2) cerebro)  `shouldBe` (cerebro{peso = 0.65} :: Raton)
                  