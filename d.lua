local trinkets = game.Workspace.Trinkets:GetChildren()
local localplayer = game.Players.LocalPlayer
local character = localplayer.Character or localplayer.CharacterAdded:Wait()
local hrp = character.HumanoidRootPart

print"no trinkets"

if character:FindFirstChild"Right Leg" then
    character:FindFirstChild"Right Leg":Destroy()
end

for i,v in pairs(trinkets) do

    if v.Material == Enum.Material.Sandstone then
        hrp:PivotTo(v.CFrame)
        if v:FindFirstChild("ClickPart") then
            print"yh"
            wait(0.3)
            if v.ClickPart:FindFirstChild"ClickDetector" then
                print"suck my nigga"
                fireclickdetector(v.ClickPart.ClickDetector)
            end
        end
    end
    print"no trinkets"
end
