local trinkets = game.Workspace.Trinkets:GetChildren()
local localplayer = game.Players.LocalPlayer
local character = localplayer.Character or localplayer.CharacterAdded:Wait()
local hrp = character.HumanoidRootPart

for i,v in pairs(trinkets) do
	if v.Name == "Ornament" or v.Name == "Present" then
		local d = game.TweenService:Create(hrp,TweenInfo.new(3),{
			Position = v.Position
		})
		d:Play()
		d.Completed:Connect(wait(1))
		if v:FindFirstChild("ClickPart") then
			print"yh"
			wait(0.3)
			if v.ClickPart:FindFirstChild"ClickDetector" then
				print"suck my nigga"
				fireclickdetector(v.ClickPart.ClickDetector)
			end
		end
	end
end
