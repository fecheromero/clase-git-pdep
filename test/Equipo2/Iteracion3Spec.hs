module Equipo2.Iteracion3Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 2" $ do
    let cerebro = UnRaton "cerebro" 13 1.3 ["rabia", "vejez"] ("normal",1)
    context "iteracion 3 " $ do
      it "al aplicarle un rovitril a un raton con porcentaje de animo mayor a 0 lo reduce a 0" $ do
          (rovitril cerebro)  `shouldBe` (cerebro{animo = ("normal",0)} :: Raton)
      it "al aplicarle un rovitril a un raton con animo 'normal' y porcentaje de animo 0 lo cambia a 'piola' con porcentaje 1" $ do
        let cerebro = UnRaton "cerebro" 13 1.3 [] ("normal",0)
        (rovitril cerebro)  `shouldBe` (cerebro{animo = ("piola",1)} :: Raton)
      it "al aplicarle un rovitril a un raton con animo 'agresivo' y porcentaje de animo 0 lo cambia a 'normal' con porcentaje 1" $ do
        let cerebro = UnRaton "cerebro" 13 1.3 [] ("agresivo",0)
        (rovitril cerebro)  `shouldBe` (cerebro{animo = ("normal",1)} :: Raton)
      it "al aplicarle un rovitril a un raton con animo 'piola' y porcentaje de animo 0 se queda igual" $ do
        let cerebro = UnRaton "cerebro" 13 1.3 [] ("piola",0)
        (rovitril cerebro)  `shouldBe` (cerebro :: Raton)
        
