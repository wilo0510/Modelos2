descomposicion::Int->[Int]
descomposicion n = if n < 10 then [n]
                else descomposicion(div n 10) ++ [mod n 10]

impares::[Int]->[Int]
impares []=[]
impares (x:xs)=if odd x then [x]++impares xs
                else impares(xs)
