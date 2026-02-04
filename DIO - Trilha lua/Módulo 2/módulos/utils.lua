local utils = {}
-- Example utility function
-- local function helloFromUtil()
--     print("Hello from utils module!")
-- end

function utils.helloFromUtil()
    print("Hello from utils module!")
end

-- Função para habilitar utf8 no terminal

function utils.enableUtf8()
    os.execute("chcp 65001")
end

-- Outra forma de exportar funções
-- utils["HelloFromUti2"] = function()
--     print("Hello from utils model 2")
-- end 


--- Calcula a barra de progresso de um atributo
--- @param atribute number Atributo de 0 a 10
--- @return string Barra de progresso
---

function utils.getProgrssBar(attribute)
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



return utils