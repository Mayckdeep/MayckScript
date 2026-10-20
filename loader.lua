
local URL = "https://raw.githubusercontent.com/SEU-USUARIO/MayckScript/main/MayckScript.lua"

local source = game:HttpGet(URL)
local run = loadstring(source)

if run then
    run()
else
    warn("Mayck Script: falha ao carregar.")
end
