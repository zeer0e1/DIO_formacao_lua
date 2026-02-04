local fruits ={
    Apple = "Red",
    Banana = "Yellow",
    Grape = "Purple",
}

-- Imprimindo as frutas e suas cores usando pairs
for fruit, color in pairs(fruits) do
    print("Fruit: " .. fruit .. ", Color: " .. color)
end

print("------outra forma de imprimir------")

-- Acessando diretamente o valor associado a chave do dicionario
print(fruits["Apple"])  -- Imprime a cor da maçã
