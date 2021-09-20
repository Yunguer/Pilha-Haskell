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

--Inverter a Lista para removemos mais de 1 elemento
inverter :: [a] -> [a]
inverter [] = []
inverter (x:xs) = (inverter xs) ++ [x]

--Remover mais de 1 elemento
multPop :: [Int] -> Int -> [Int]
multPop [] _ = error "A Pilha está Vazia!"
multPop (x:xs) a = drop a (x:xs)


main :: IO ()

main = do


    let p1 = [1,2,3]
    let p2 = push p1 10
    print p2    
    let p3 = push p2 20
    print p3
    let p4 = push p3 30
    print p4
    let p5 = inverter p4
    let p6 = multPop p5 2
    let p7 = inverter p6
    print p7
    let p8 = topo p7
    print p8
