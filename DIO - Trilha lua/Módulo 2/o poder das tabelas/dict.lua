 --- Dicionario em lua

 local fruits ={
    Apple = "Red",
    Pineapple = "Yellow",
    Banana = "Yellow",
 }

 for i = 1, #fruits, 1 do
    local fruit = fruits[i]
    print(fruit)
 end

 print("--------------")

 for key, value in pairs(fruits) do
    print("Fruit: " .. key .. " - Color: " .. value)
 end    