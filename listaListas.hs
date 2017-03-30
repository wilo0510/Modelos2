
listaListas::[[[Int]]]->[[Int]]
listaListas [[]]=[[]]
listaListas ([xss]:[xs]) = [[minimum xss]++[maximum xss]++[sum xss]++[length xss]] ++ listaListas [xs]
