module Equipo1.Iteracion4Spec where
import Lib 
import Test.Hspec

spec :: SpecWith ()
spec = do
  describe "equipo 1" $ do
    let cerebro = UnRaton "cerebro" 13 1.3 ["obesidad", "vejez"] ("normal",1)
    context "iteracion 4 " $ do
      it "hay un solo medicamento util para curar la obesidad entre una hierbaVerde 'obesidad' y una alcachofa" $ do
          (length.medicamentosUtiles [hierbaVerde "obesidad", alcachofa](\raton ->not.elem "obesidad".enfermedades $ raton) $ cerebro)  `shouldBe` 1
      it "hay dos  medicamentos utiles para curar la obesidad entre una hierbaVerde 'obesidad', una alcachofa y un reduceFatFast 4" $ do
        (length.medicamentosUtiles [hierbaVerde "obesidad", alcachofa, reduceFatFast 4](\raton ->not.elem "obesidad".enfermedades $ raton) $ cerebro)  `shouldBe` 2
      it "No hay ningun  medicamento util para cambiar el nombre de un raton entre una hierbaVerde 'obesidad', una alcachofa y un reduceFatFast 4" $ do
        (length.medicamentosUtiles [hierbaVerde "obesidad", alcachofa, reduceFatFast 4](\raton ->(/= nombre cerebro).nombre $ raton) $ cerebro)  `shouldBe` 0
  