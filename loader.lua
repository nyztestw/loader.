local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Games = {
    [136676445296302] = "https://api.jnkie.com/api/v1/luascripts/public/2b5084dd17a01de1942a8def366f8f381e4c11844901bfa719c45440715fc5ad/download", -- Trap N bang South
    [16472538603] = "https://api.jnkie.com/api/v1/luascripts/public/047f4718ca4dc267a4509e0122953aaa307170bb060c063ff5b0c5cc9ffe3978/download", -- Tha Bronx 3 
    [130700367963690] = "https://api.jnkie.com/api/v1/luascripts/public/5d7318b1b03e449b34d38c75435575ca6188e2d85dbcf856bd7b19713292b462/download", -- Philly Streets
}

getgenv().SCRIPT_KEY = script_key

local ScriptURL = Games[game.PlaceId]

if not ScriptURL then
    LocalPlayer:Kick("Pulse| This game is not supported!")
    return
end

if not getgenv().SCRIPT_KEY then
    LocalPlayer:Kick("Pulse | Key not found!")
    return
end

loadstring(game:HttpGet(ScriptURL))()



