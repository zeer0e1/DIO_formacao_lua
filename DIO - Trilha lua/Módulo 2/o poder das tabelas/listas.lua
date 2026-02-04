--[[
O que são tebelas em Luas
]]

local tabelas = {}

local names = {"creeper", "zombie", "skeleton"}

for i = 1, #names, 1 do
    local name = names[i]
    print(name)
end

print("--------------")
local numbers = {10, 20, 30, 40, 50}
 
for key, value in pairs(numbers) do
    print("Chave: " .. key .. " - Valor: " .. value)
end