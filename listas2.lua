local monsters = {
    "Crreper",
    "Zumbi",
    "Esqueleto",
    "Goblin",
}

-- Imprimindo os monstros usando pairs
for key, value in pairs(monsters) do
    print("Monstro: " .. value)
end

print("------outra forma de imprimir------")

-- Outra forma de imprimir os monstros usando um loop numérico
for i = 1, #monsters do
    print("Monstro: " .. monsters[i])
end