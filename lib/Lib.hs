module Lib where

data Raton = UnRaton{
    nombre :: String,
    edad :: Float,
    peso :: Float,
    enfermedades :: [String],
    estado :: (String, Float)
} deriving(Show,Eq)

modificarNombre ::  (String -> String) -> Raton -> Raton
modificarNombre  modificador raton = undefined

modificarEdad ::  (Float -> Float) -> Raton -> Raton
modificarEdad  modificador raton = undefined

modificarPeso ::  (Float -> Float) -> Raton -> Raton
modificarPeso  modificador raton = undefined

modificarEnfermedades ::  ([String] -> [String]) -> Raton -> Raton
modificarEnfermedades  modificador raton =  undefined