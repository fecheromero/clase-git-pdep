module Equipo4.Iteracion4Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 3" $ do
    let cerebro = UnRaton "cerebro" 13 1 ["obesidad", "vejez"] ("agresivo",1)
    let pinky = UnRaton "pinky" 4 2 [] ("piola",0)
    context "iteracion 4 " $ do
      it "el peso promedio en una lista de ratones es el promedio de sus pesos" $ do
          (pesoPromedio [pinky,cerebro] )  `shouldBe` ((2+1)/2)
      it "el peso promedio en una lista de un raton es su peso" $ do
        (pesoPromedio [pinky] )  `shouldBe` 2
      it "el peso promedio en una lista vacia es 0" $ do
        (pesoPromedio [] )  `shouldBe` 0
        
      