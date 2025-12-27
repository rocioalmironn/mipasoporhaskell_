# Primeros Ejercicios – Programación Funcional (Haskell)

## 1) Función `'calcular'` 

Definir la función `calcular'`, que recibe una **tupla de 2 elementos** y devuelve una **nueva tupla** según las siguientes reglas:

- Si el **primer elemento es par**, lo duplica; si no, lo deja igual.
- Si el **segundo elemento es impar**, le suma 1; si no, lo deja igual.

### Ejemplo:
```hs
calcular' (4, 5)
-- Resultado: (8, 6)
```
## 2) Funciones booleanas

Definir las funciones booleanas estándar **sin utilizar las funciones predefinidas de Haskell**.

### 2.1) Función `and'`
Definir la función `and'`, que reciba dos valores booleanos y devuelva el resultado de la conjunción lógica.

### 2.2) Función `or'`
Definir la función `or'`, que reciba dos valores booleanos y devuelva el resultado de la disyunción lógica.

---

## 3) Función `notaMaxima`

Definir la función `notaMaxima`, que dado un alumno devuelva la **máxima nota** obtenida.

>  **Restricción:** resolver el ejercicio **sin utilizar guardas**.

```hs
type Nota = Integer
type Alumno = (String, Nota, Nota, Nota)
```
### 4) Definir la función `'cuadruple'` reutilizando la función doble. 
---
### 5) Definir la función `'esMayorA'` , que verifique si el doble del siguiente de la suma entre 2 y un número es mayor a 10. 
---
### 6) Dar expresiones lambda que sean equivalentes a las siguientes expresiones:
---
- `triple`
- `siguiente`
- `suma`
- `sumarDos`

### 7)  Dada las siguientes definiciones:
---
7.1) apply f x = f x
¿ A qué se reduce la siguiente expresión ?.
```hs
> apply fst  (const 5 7, 4)
```
7.2) twice f x = (f . f) x
¿ A qué se reduce la siguiente expresión ?.
```hs
>twice (`div` 2) 12
```


