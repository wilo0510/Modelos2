descomposicion::Int->[Int]
descomposicion n = if n < 10 then [n]
                else descomposicion(div n 10) ++ [mod n 10]

sumaDigitos::[Int]->Int
sumaDigitos[]=0
sumaDigitos(x:xs)=if mod x 5==0 then x+sumaDigitos xs
                  else sumaDigitos xs
