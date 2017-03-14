doubleMe x=x+x

doubleUs x y = doubleMe x+doubleMe y

dobleNumerosPequeños x= if x<100 then x else x*2

tamaño xs=sum[1|_<-xs]

factorial::Int->Int
factorial 0=1
factorial n=n*factorial(n-1)

tamañoRecursivo :: [Int]->Int
tamañoRecursivo []=0
tamañoRecursivo(_:xs)=1+tamañoRecursivo xs

sumaRecursiva::[Int]->Int
sumaRecursiva[]=0
sumaRecursiva(x:xs)=x+sumaRecursiva xs

fibo::Int->Int
fibo 0=0
fibo 1=1
fibo n=n+fibo(n-1)

maximoLista::[Int]->Int
maximoLista []=error"Error Lista Vacia"
maximoLista[x]=x
maximoLista (x:xs)
            | x>maxTail=x
            |otherwise=maxTail
            where maxTail=maximoLista xs

replicar::Int->Int->[Int]
replicar n x
        |n<=0 = []
        |otherwise =x:replicar(n-1) x

tomar::Int->[Int]->[Int]
tomar n _
      |n<=0 =[]
tomar n []=[]
tomar n (x:xs)= x :tomar (n-1) xs

reversa:: [Int]->[Int]
reversa []=[]
reversa (x:xs)=reversa xs ++ [x]

descomposicion::Int->[Int]
descomposicion n = if n < 10 then [n]
                else descomposicion(div n 10) ++ [mod n 10]

sumaDigitos::[Int]->Int
sumaDigitos[]=0
sumaDigitos(x:xs)=if mod x 5==0 then x+sumaDigitos xs
                  else sumaDigitos xs
