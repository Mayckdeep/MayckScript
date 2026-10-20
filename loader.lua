
local URL = "https://raw.githubusercontent.com/Mayckdeep/MayckScript/main/Mayck%20Script.txt"

local success, source = pcall(function()
    return game:HttpGet(URL)
end)

if not success then
    warn("Erro ao baixar Mayck Script:", source)
    return
end

local execute, err = loadstring(source)

if not execute then
    warn("Erro no código:", err)
    return
end

local ok, result = pcall(execute)

if not ok then
    warn("Erro ao executar Mayck Script:", result)
end
