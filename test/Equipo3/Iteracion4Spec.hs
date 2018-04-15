module Equipo3.Iteracion4Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 3" $ do
    let cerebro = UnRaton "cerebro" 13 1 ["obesidad", "vejez"] ("agresivo",1)
    let pinky = UnRaton "pinky" 4 2 [] ("piola",0)
    context "iteracion 4 " $ do
      it "al aplicar la funcion vamoACalmarno sobre una lista de ratones sin ninguno agresivo los devuelve en el mismo estado" $ do
          (vamoACalmarno [pinky] )  `shouldBe` [pinky]
      it "al aplicar la funcion vamoACalmarno sobre una lista de ratones con 1 raton agresivo le aplica un rovitril y deja al resto igual" $ do
        (vamoACalmarno [pinky,cerebro] )  `shouldBe` [pinky,(rovitril cerebro)]
      it "al aplicar la funcion vamoACalmarno sobre una lista vacia retorna una lista vacia" $ do
        (vamoACalmarno [] )  `shouldBe` []
    