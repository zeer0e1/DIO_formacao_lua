
local utils = require("utils")
local player = require("player.player")
local playerActions = require('player.acations')
local colossus = require("colossus.colossus")
local acations = require("player.acations")
local boss = colossus


utils.enableUtf8()

utils.printHead()

utils.printCreature(boss)

while true do

    -- Mostra as ações disponível
    -- TODO
    print('O que vc deseja fazer em seguida')
    playerActions.getValidaActions(player, boss)
    local validPlayerActiobs = playerActions.getValidaActions(player, boss)
    for i, acations in pairs(validPlayerActiobs)do
        print(string.format("%d. %s", i, acations))
    end

    -- Simular o turno do jogador
    -- TODO

    -- Para quando o boss morre
    if boss.health <= 0 then
        break
    end

    -- Simular turno da criatura

    -- Para quando o plater morre
    if player.health <= 0 then
        break
    end
end