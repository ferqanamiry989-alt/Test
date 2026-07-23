local codeString = [[
    local UserId = 12345678 -- Example ID
    local BannedPlayers = {
        [UserId] = {
            reason = "Inappropriate behavior",
            bannedAt = os.time(),
            bannedBy = "Admin123"
        }
    }
    return BannedPlayers
]]

-- Load and execute the code string
local chunk, errorMessage = loadstring(codeString)

if chunk then
    local success, BannedPlayers = pcall(chunk)
    if success then
        print(BannedPlayers[12345678].reason) -- Outputs: Inappropriate behavior
    else
        warn("Execution error: " .. tostring(BannedPlayers))
    end
else
    warn("Syntax error: " .. errorMessage)
end
