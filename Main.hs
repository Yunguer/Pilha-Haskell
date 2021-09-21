
--Adicionar
push :: [a] -> a -> [a]
push pilha x = pilha ++ [x]

--Duas pilhas em uma
fusePush :: [a] -> [a] -> [a]
fusePush [] [] = []
fusePush [] (x:xs) = (x:xs)
fusePush (x:xs) [] =(x:xs)
fusePush(y:ys)(x:xs) = y:ys ++ x:xs

--Retorna o Topo
topo :: [a] -> a
topo [] = error "A Pilha está Vazia!"
topo [x] = x
topo (x:xs) = topo xs

--Checar se está vazia
isEmpty :: [a] -> Bool
isEmpty [] = True
isEmpty _ = False

--Remover o topo
pop :: [a] -> [a]
pop [] = error "A Pilha está Vazia!"
pop [x] = []
pop (x:xs) = x : pop xs

inverter :: [a] -> [a]
inverter [] = []
inverter (x:xs) = (inverter xs) ++ [x]

--Remover mais de 1 elemento
multPop :: [b] -> Int -> [b]
multPop [] _ = error "A Pilha está Vazia!"
multPop pilha a = inverter(drop a (inverter pilha))


main :: IO ()

main = do


    let p1 = [1,2,3]
    let p2 = push p1 10
    print p2    
    let p3 = push p2 20
    print p3
    let p4 = push p3 30
    print p4
    let p5 = multPop p4 2
    print p5
    let p6 = topo p5
    print p6
