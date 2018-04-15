# clase-git-pdep

##  Setupeo del proyecto:

-Bajar el repo
-dentro de la carpeta del repo
  -instalar stack https://docs.haskellstack.org/en/stable/README/#how-to-install (solo instalar)
  -correr stack setup
  -corre stack build
  
##  Correr test:
-dentro de la carpeta del repo
  -stack test (corre toda la suit)
  -stack test --test-arguments "-m EquipoN" (corre todos los test del Equipo N)
  -stack test --test-arguments "-m EquipoN.IteracionM" (corre todos los test del equipo N, Iteracion M)

## Correr la solucion en GHCI:
-dentro de la carpeta del repo
  -stack ghci

Cada equipo debe completar sus funcionalidaes en el archivo lib/Lib.hs (correr los test antes de subirlo al repo)
