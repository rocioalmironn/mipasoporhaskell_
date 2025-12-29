-- 1)
{-(barra invertida = alt+92)
1) Definir la función calcular’, que recibe una tupla de 2 elementos, y devuelve una nueva tupla según las siguientes reglas:
●  si el primer elemento es par lo duplica; si no lo deja como está
●  si el segundo elemento es impar le suma 1; si no deja como está
>calcular’ (4,5)
(8,6)
even - funcion para
odd - funcion impar,
if = guardas
    :r --- recalcular en ghci
-}
calcular::(Integer,Integer)->(Integer,Integer)
calcular (primero, segundo)= (duplicarPar primero, sumarUno segundo)

-- recordar: en las guardas usar otherwise (es como si fuera un "else")
duplicarPar::Integer-> Integer
duplicarPar nro | even nro = doble nro
                | otherwise = nro 

-- defino doble (importante: en este paradigma trabajar con funciones)               
doble :: Integer->Integer
doble nro = nro*2

sumarUno ::Integer-> Integer
sumarUno nro | odd nro = siguiente nro 
             | otherwise = nro 

--defino siguente nro 
siguiente :: Integer->Integer
siguiente nro = nro + 1

-- 2)
{-
2) Definir las funciones boolenas estándar. Sin usar las funciones predefinidas.
2.1) Definir la función and’
2.2) Definir la función or’.
        FUNCIONES PREDEFINIDAS:
        -&&
        -||
-}
--

and':: Bool ->Bool ->Bool
and' primerBool segundoBool | not primerBool = False
                            | not segundoBool = False
                            | otherwise = True
--
and'':: Bool ->Bool ->Bool
and'' pricond segcond |pricond =segcond
                      | otherwise = False                  
--DECLARATIVA
and''':: Bool ->Bool ->Bool
and''' True segcond =segcond --Pattern Matching
and''' _ _ = False

or':: Bool ->Bool ->Bool
or' False segcond =segcond 
or' True _ = True 
--MAS DECLARATIVA
or'':: Bool ->Bool ->Bool
or'' False segcond =segcond 
or'' _ _ = True 
-- 3)
{-
Función `notaMaxima`
Definir la función `notaMaxima`, que dado un alumno devuelva 
la **máxima nota** obtenida.
* resolver el ejercicio sin utilizar guardas
type Nota = Integer
type Alumno = (String, Nota, Nota, Nota)-}

-- Creo los tipos de datos
type Nota = Integer
type Alumno = (String, Nota, Nota, Nota)

--defino la funcion pedida
-- uso la funcion "max"
notaMax:: Alumno ->Nota
notaMax  (_,nota1,nota2,nota3)=max nota1 (max nota2 nota3)

--4)
{-
4) Definir la función `'cuadruple'` reutilizando la función 
doble. -}
--defino funcion
cuadruple:: Integer->Integer
cuadruple nro = doble nro + doble nro
--mas declarativa
cuadruple':: Integer->Integer
cuadruple' nro = doble (doble nro)
{-
5) Definir la función `'esMayorA'`, que verifique si 
el doble del siguiente de la suma entre 2 y 
un número es mayor a 10. 
-}
-- defino (devuelve un bool no un entero)
esMayorA :: Integer -> Bool   
esMayorA nro = doble(siguiente(2+nro)) >10
--6)
{-
6) Dar expresiones lambda que sean equivalentes a las siguientes expresiones:
- `triple`
- `siguiente`
- `suma`
- `sumarDos`
-}
--triple
--(\x -> x*3)

--siguiente
--(\x -> x+1)

--sumar
--(\x y -> x+y)

--sumarDos
--(\x -> x+2)