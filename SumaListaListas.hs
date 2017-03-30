sumaListas::[[Int]]->[Int]
sumaListas []=[]
sumaListas (xss:xs) = [sum xss] ++ sumaListas xs
