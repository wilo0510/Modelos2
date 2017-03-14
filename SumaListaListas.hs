sumaListas::[[Int]]->[Int]
sumaListas [[]]=[]
sumaListas [(xss:xs)]=sum [xs]++ sumaListas [[xss]]
