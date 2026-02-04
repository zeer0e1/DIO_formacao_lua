local utils  = require("utils")
utils.enableUtf8()
print()
utils.helloFromUtil()
print("Barra de progresso:")
for i = 0,10,1 do
    print(utils.getProgrssBar(i))
end
