module Equipo3.Iteracion3Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 3" $ do
    let cerebro = UnRaton "cerebro" 13 1.3 ["obesidad"] ("normal",1)
    context "iteracion 3 " $ do
      it "al aplicarle un reduceFatFast a un raton con obesidad la pierde" $ do
          (enfermedades.reduceFatFast 1 $ cerebro)  `shouldBe` []
      it "al aplicarle un reduceFatFast N a un raton se le aplica consecutivamente una hierbaVerde de 'obesidad' y N alcachofas  " $ do
        (reduceFatFast 4 $ cerebro)  `shouldBe` (alcachofa.alcachofa.alcachofa.alcachofa.hierbaVerde "obesidad" $ cerebro :: Raton)
