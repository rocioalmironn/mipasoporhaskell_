{-
HAKELL NO ME OBLIGA A DDEFINIR TIPOS
es como definir una relacion en matematica
R: Z -Z 
Hay que definir dominio y codominio.
-}
siguiente :: Integer->Integer
siguiente nro = nro + 1
{-
consola ghci:
ghci> siguiente 9
ghci> 10
ghci> siguiente 1.9
ghci> ERROR (YA QUE 1.9 NO ES ENTERO)
 -}

{-
            *    Funcion Partida en haskell (GUARDAS)
        Si el nro es par, retorno el siguient
        En cualquier otro caso, retorno el doble del nro
**********HAKELL NO ME OBLIGA A DEFINIR TIPOS
                        * POR ESO ACA ABAJO LO INFIRIO :
                          calcular :: Integer -> Integer //ya que usa "nro", y este es entero.
-}
calcular nro | even nro = siguiente nro
             |otherwise = doble nro
--El orden de las funciones no importa
doble nro= nro *2
--espera un entero(la nota) y retorna un bool (si aprobo = true)
aproboAlumno::Integer -> Bool
aproboAlumno nota = nota>5
--TUPLAS
{-
Representan un tipo de dato compuesto, con elementos que pueden ser de 
distinto tipo.
El nro de elementos es fijo, o sea siempre el mismo.
Asi podemos por ej representar una fecha:
Contamos con funciones predefinidas para el manejo de tuplas.

-}
--segundo elemento d euna tupla (funciona con strings y nros)
segundo(_,elemento,_)=elemento
{-
consola
ghci> segundo(1,"pedro","gato")
"pedro"
-}
--EXPRECIONES LAMBDA (ANONIMAS)
{-
CON ESTO NO ES NECESARIO TENER UNA FUNCION "SIGUENTE", SINO QUE PUEDO DEFINIRLA EN LA CONSOLA.
---consola-- (barra invertida = alt+92)
ghci> (\x-> x+1) 7
8
-}
