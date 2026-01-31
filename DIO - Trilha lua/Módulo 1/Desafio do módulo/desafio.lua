 --[[
Nome da criatua
Descricao
Som que faz
Atributos
 ataque
 defesa
 vitalidade
 velocidade
 Inteligencia
Habilidades
 furtividade
 Explosão


 ++++++++++++++++++++++++++++++++++++++++++
[
] CREEPER
[ um mostro verde que explode quando chega perto de vc
] 
[ Som: Tssss
]
[ atributos:
[   ataque: 99999
]   defesa: 547
[
]
 ++++++++++++++++++++++++++++++++++++++++++

 ]]

 -- utf8
os.execute("chcp 65001")

-- Criatura
 local mosterName = "CREEPER"
 local description = "Ele tem um temperamento explosivo"
 local emojiMonter = "💣"

 -- atributos
local attaAttribudte = 10
local defenseAttribute = 4
local lifeAttribute = 5
local speedAtribute = 7
local inteligenceAttribute = 2
local fraquesa = "Agua"
local periodoDoDia = "Noite"

-- funcão que recebe um atributo e nos retorna uma string
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

-- cartão
print("===============================")
print("| ")
print("|" .. mosterName)
print("|" .. description)
print("| ")
print("| Emoji favorito:" .. emojiMonter)
print("| Fraquesa:" .. fraquesa)
print("| Periodo do dia:" .. periodoDoDia)
print("|")
print("| Atributos: ")
print("|    ataque:       " .. getProgressBar(attaAttribudte))
print("|    defesa:       " .. getProgressBar(defenseAttribute))
print("|    vitalidade:   " .. getProgressBar(lifeAttribute))
print("|    velocidade:   " .. getProgressBar(speedAtribute))
print("|    inteligencia: " .. getProgressBar(inteligenceAttribute))
print("|")
print("===============================")
print("História: ")
print("Aparência e Comportamento Com pele verde escura, corpo vertical e olhos pretos vazios, o Creeper se camufla em florestas e só explode a 3-7 blocos de distância, piscando antes da detonação. Ao morrer, dropa pólvora (usada para TNT) e XP, mas só se eliminado pelo jogador. Ele ignora a maioria dos mobs, exceto gatos (que o repelem) e outros Creepers carregados.")
print("===============================")
