local utils = {}

function utils.enableUtf8()
    os.execute("chcp 65001")
end

function utils.printHead()
    print([[

-----------------------------------------

                    |>
                    //_____________________
        <((((((((((|_/_/____//________/____/
                    \\
                    |>

                Simulador de batalha 
-----------------------------------------

]]

)
end


local function getProgressBar(attribute)
    local fullChar = "◽"
    local empyChar = "◾"

    
    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. empyChar
        end
    end
    return result
end


function utils.printCreature(creature)

    local healthRate = math.floor((creature.health / creature.maxHealth) * 10)
-- cartão
    print("===============================")
    print("| ")
    print("|" .. creature.name)
    print("|" .. creature.description)
    print("| ")
    print("|")
    print("| Atributos: ")
    print("|    ataque:       " .. getProgressBar(creature.atack))
    print("|    defesa:       " .. getProgressBar(creature.defence))
    print("|    vitalidade:   " .. getProgressBar(creature.health))
    print("|    velocidade:   " .. getProgressBar(creature.speed))
    print("|")
    print("===============================")
    print("História: ")
    print(" Um colosso que habita as profundezas de uma caverna, ele é conhecido por sua força descomunal e resistência quase impenetrável. Dizem que ele é o guardião de um tesouro antigo, e muitos aventureiros tentaram derrotá-lo para reivindicar a riqueza escondida, mas poucos sobreviveram para contar a história.")
    print("===============================")





end






return utils