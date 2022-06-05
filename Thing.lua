--/ Locals /--
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

--/ API /--
api = {}

--/ Universal /--
function api:Universal_GotoPlayer(arg) 
    Player = tostring(arg)
    for i,v in pairs(Players:GetPlayers()) do
        if v.Name == Player then
            LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
        end
    end
end

function api:Universal_ClientBringPlayer(arg) 
    Player = tostring(arg)
    for i,v in pairs(Players:GetPlayers()) do
        if v.Name == Player then
            v.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end

return api
