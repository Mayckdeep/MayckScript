
local URL = "https://raw.githubusercontent.com/Mayckdeep/MayckScript/main/Mayck%20Script.txt"

local success, source = pcall(function()
    return game:HttpGet(URL)
end)

if not success then
    warn("Mayck Script: erro ao baixar o código:", source)
    return
end

local run, err = loadstring(source)

if not run then
    warn("Mayck Script: erro no código:", err)
    return
end

local ok, result = pcall(run)

if not ok then
    warn("Mayck Script: erro ao executar:", result)
end
