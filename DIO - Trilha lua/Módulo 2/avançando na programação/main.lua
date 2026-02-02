 --[[
    Funções
 
 ]]

os.execute("chcp 65001")

 local function sayHello()
    print("Olá usuário seja bem vindo")
 end

local function convertKilometersToMies(km)
    local miles = km / 1.609
    return math.floor(mile + 0.5)
end

local function getDate()
    return os.date()
end

 sayHello()

 local velocidadeEmKm = 10
 local mph = convertKilometersToMies(velocidadeEmKm)

print("Velocidades em velocidades: " .. mph)
print("Data atual: " .. getDate())