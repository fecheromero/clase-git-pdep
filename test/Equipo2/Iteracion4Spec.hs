module Equipo2.Iteracion4Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 2" $ do
    let cerebro = UnRaton "cerebro" 13 1 ["obesidad", "vejez"] ("normal",1)
    let pinky = UnRaton "pinky" 4 2 [] ("piola",0)
    context "iteracion 4 " $ do
      it "al aplicar una medicamento que cambia el peso a 0 los ratones siempre estan mas lindos que nunca" $ do
          (estanMasLindosQueNunca [cerebro,pinky] (\raton -> raton{peso = 0}))  `shouldBe` True
      it "al aplicar una alcachofa sobre una lista de ratones con un raton de 2 kg no estan mas lindos que nunca" $ do
        (estanMasLindosQueNunca [cerebro,pinky] alcachofa)  `shouldBe` False
      it "al aplicar una alcachofa sobre una lista de ratones con solo un raton de 1 kg estan mas lindos que nunca" $ do
        (estanMasLindosQueNunca [cerebro] alcachofa)  `shouldBe` True
      