module Equipo1.Iteracion3Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 1" $ do
    let cerebro = UnRaton "cerebro" 13 1.3 ["rabia", "vejez"] ("normal",1)
    context "iteracion 3 " $ do
      it "al aplicarle un pontsAntiAge a un raton se le aplica consecutivamente 3 hierbasVerdes de vejez y finalmente una alcachofa" $ do
          (pondsAntiAge cerebro)  `shouldBe` (alcachofa . hierbaVerde "vejez". hierbaVerde "vejez". hierbaVerde "vejez" $ cerebro  :: Raton)
