local letters = "abcdefghijklmnopqrstuvwxyz"
local numbers = "0123456789"
local symbols = "!@#$%^&*()-_=+[]{};:,.<>?/|"
math.randomseed(os.time())
local listaPrincipal = {
    letters,
    numbers,
    symbols
}

print("Gerador de Senhas")
print("Digite quantos caracteres deseja na senha:")
local tamanhoSenha = io.read("*n")

if not tamanhoSenha or tamanhoSenha <= 0 then
    print("Entrada inválida. Digite um número positivo.")
    return
end

local senha = ""
for i = 1,tamanhoSenha,1 do

    --Pegando a listaPrincipal
    local listaAtual = math.random(#listaPrincipal)
    local listaEscolhida = listaPrincipal[listaAtual]

    -- Pegando os caracteres
    local caractereAtual = math.random(#listaEscolhida)
    local char = string.sub(listaEscolhida, caractereAtual, caractereAtual)

    -- atualizando a senha

    senha = senha .. char
end
print("Senha gerada: " .. senha)