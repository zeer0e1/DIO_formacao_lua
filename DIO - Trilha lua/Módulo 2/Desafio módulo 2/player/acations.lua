local actions = {}

actions.list = {}

function actions.build()
    actions.list = {}

    -- Atk com espada

    local swordAttack = {
        description = "Atacar com espada",
        requeriment = nil,
        execute = function (plauerData, creatureData)
            -- 1. Definir chance de sucesso
            local sucessChance = creatureData.speed == 0 and 1 or plauerData.speed / creatureData.speed
            local sucess = math.random() <= sucessChance
            
        
            -- 2. Calcular dano
            local rawDamage = plauerData.attak - math.random() * creatureData.defence
            local damage = math.max(1, math.ceil(rawDamage))

            -- 3. Apresentar o resultado como print
            if sucess then
            -- 4. aplicar dano caso de sucesso
                print(string.format("Você atacou e deu %d de dano",damage))
                creatureData.health = creatureData.health - damage
            else
                print("Vc tentou atacar e erroooou")
            end
        end
    }
    -- usar poção de regem
    local regenPotion = {
        description = "Toma poção de regen",
        requeriment = function (plauerData, creatureData)
            return plauerData.potions >= 1
        end,

        execute = function (plauerData, creatureData)
            plauerData.potions = plauerData.potions - 1

            -- O quanto de vida recuperar
            local regenPoints  = 5
            plauerData.health = math.min(plauerData.maxHealth, plauerData.health + regenPoints)
            print("Vc recuperou vida")
        end
        
    }

    -- popular lista    
    actions.list[#actions.list+1] = swordAttack
    
end

---Retonr auma lista de ações validas
---@param plauerData table Definocão do jogadorta
---@param creatureData table definição de criatura  
---@return table
function actions.getValidaActions(plauerData, creatureData)
    local validActions = {}

    for _, action in pairs(actions.list) do
        local requeriment = action.requeriment
        local isValid = requeriment == nil or requeriment(plauerData, creatureData)
        if isValid then
            validActions[#validActions+1] = action
        end
    end
    return validActions

end


return actions