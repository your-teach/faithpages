# Наброски

## Скрипты
```lua
workspace.Part.BrickColor = BrickColor.new("Pastel Blue")
workspace.Part.BrickColor = BrickColor.new(11)	    -- https://create.roblox.com/docs/reference/engine/datatypes/BrickColor
workspace.Part.BrickColor = BrickColor.new(128, 187, 219)
workspace.Part.Color = Color3.new(1,1,1)                  -- https://create.roblox.com/docs/reference/engine/datatypes/Color3
workspace.Part.Size = Vector3.new(10,10,10)
workspace.Part.Size = Vector3.new(2, 2, 2) -- Изменить размеры на x,y,z в 2 раза
workspace.Part.CFrame = CFrame.new(0,0,0) 				-- https://create.roblox.com/docs/workspace/cframes teleport part
workspace.Part.Material = Enum.Material.Plastic           -- https://create.roblox.com/docs/reference/engine/enums/Material
workspace.Part.CFrame = workspace.Part.CFrame * CFrame.Angles(0, math.rad(90), 0) -- вращение на 90 градусов
proximityPrompt.Triggered:Connect(function) -- кнопка у объекта (нужно добавить сначалак парту proximityPrompt)


game:GetService('Players').LocalPlayer:WaitForChild('PlayerGui') -- Найти gui игрока (через LocalScript)
game.Players.LocalPlayer -- Найти игрока (через LocalScript)
game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait() 
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
game.Players.LocalPlayer.Character:FindFirstChild("RightWrist", true)

game.Players:GetChildren() -- Найти всех игроков через server script (далее можно сделать поиск через цикл for)
game.Players:GetPlayers()  -- Тоже самое что выше
local players = game:GetService("Players")
players.FallenTheo или players['FallenTheo'] -- Найти конкретного игрока через server script

game.Workspace[NamePlayer].HumanoidRootPart


object:GetChildren() -- Получить все объекты, которые лежат в object

for n = 1, 300 do
	wait(1)
	workspace.oneblock.BrickColor = BrickColor.new(n)
	workspace.oneblock.CFrame = CFrame.new(0,0,0)
end


CframeValue:GetPropertyChangedSignal("Value"):Connect(function()
	model:PivotTo(CframeValue.Value)
end)
```
 
## Выдержки
**Stepped**, **Heartbeat**, **RenderStepped**:
	RenderStepped работает только в локальных скриптах,
	а Heartbeat и Stepped работают как в обычных, так и в локальных скриптах.
	Вы можете использовать любой из них, Heartbeat запускается после расчетов
	физики каждый кадр, а Stepped запускается каждый кадр перед расчетами физики.

**ServerScriptService**, **ReplicatedStorage**:
ServerScriptService для связи между серверными скриптами и ReplicatedStorage для связи между клиентскими скриптами.

**RemoteEvent**, **RemoteFunction**:
Remote functions - это функции, которые можно вызывать из одного скрипта и выполнять в другом скрипте. Они позволяют вам отправлять данные из одного скрипта в другой и получать результат выполнения этой функции. Например, вы можете использовать remote functions для того, чтобы синхронизировать данные между игроками или между разными частями игры. 

**Remote events** - это события, которые можно вызывать из одного скрипта и обрабатывать в другом скрипте. Они позволяют вам отправлять уведомления из одного скрипта в другой, не ожидая никакого результата. Например, вы можете использовать remote events для того, чтобы уведомить другие скрипты о том, что произошло какое-то событие

https://create.roblox.com/docs/scripting/events/remote - Server <=> Client


