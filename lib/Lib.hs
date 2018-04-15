module Lib where
import Data.List
data Raton = UnRaton{
    nombre :: String,
    edad :: Float,
    peso :: Float,
    enfermedades :: [String],
    estado :: (String, Float)
} deriving(Show,Eq)


type Hierba = (Raton -> Raton)
--Iteracion  1

modificarNombre ::  (String -> String) -> Raton -> Raton
modificarNombre  modificador raton = undefined

modificarEdad ::  (Float -> Float) -> Raton -> Raton
modificarEdad  modificador raton = undefined

modificarPeso ::  (Float -> Float) -> Raton -> Raton
modificarPeso  modificador raton = undefined

modificarEnfermedades ::  ([String] -> [String]) -> Raton -> Raton
modificarEnfermedades  modificador raton =  undefined

--Iteracion 2

hierbaVerde :: String -> Raton -> Raton

hierbaVerde criterio raton  = undefined

alcachofa :: Raton -> Raton

alcachofa raton = undefined


hierbaZord :: Raton -> Raton

hierbaZord raton = undefined

medicamento :: [Hierba] -> Raton -> Raton

medicamento hierbas raton = undefined