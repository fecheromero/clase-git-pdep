module Equipo4.Iteracion1Spec where
    import Lib 
    import Test.Hspec
    
    spec :: SpecWith ()
    spec = do
      describe "equipo 4" $ do
        let cerebro = UnRaton "cerebro" 13 1.3 ["rabia"] ("normal",1)
        context "iteracion 1 " $ do
          let limpiarLista = (\ lista -> [])
          it "la funcion modificarEnfermedades aplicada con la funcion limpiarLista retorna un raton sano" $ do
              (modificarEnfermedades limpiarLista cerebro)  `shouldBe` (cerebro{enfermedades = []} :: Raton)
                  