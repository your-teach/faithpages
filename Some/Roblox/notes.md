# Наброски

## Скрипты
```lua
workspace.Part.BrickColor = BrickColor.new("Pastel Blue")
-- https://create.roblox.com/docs/reference/engine/datatypes/BrickColor
workspace.Part.BrickColor = BrickColor.new(11)	    
workspace.Part.BrickColor = BrickColor.new(128, 187, 219)
-- https://create.roblox.com/docs/reference/engine/datatypes/Color3
workspace.Part.Color = Color3.new(1,1,1)                  
workspace.Part.Size = Vector3.new(10,10,10)
-- Изменить размеры на x,y,z в 2 раза
workspace.Part.Size = Vector3.new(2, 2, 2) 
-- https://create.roblox.com/docs/workspace/cframes teleport part
workspace.Part.CFrame = CFrame.new(0,0,0) 				
-- https://create.roblox.com/docs/reference/engine/enums/Material
workspace.Part.Material = Enum.Material.Plastic    
-- вращение на 90 градусов       
workspace.Part.CFrame = workspace.Part.CFrame * CFrame.Angles(0, math.rad(90), 0) 
-- кнопка у объекта (нужно добавить сначала к парту proximityPrompt)
proximityPrompt.Triggered:Connect(function) 
-- Создание парта
local part = Instance.new("Part")
part.Parent = workspace
-- Найти gui игрока (через LocalScript):
game:GetService('Players').LocalPlayer:WaitForChild('PlayerGui') 
-- Найти игрока (через LocalScript)
game.Players.LocalPlayer 

game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait() 
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
game.Players.LocalPlayer.Character:FindFirstChild("RightWrist", true)

-- Найти всех игроков через server script (далее можно сделать поиск через цикл for)
game.Players:GetChildren() 
game.Players:GetPlayers()  -- Тоже самое что выше
local players = game:GetService("Players")
-- Найти конкретного игрока через server script
players.FallenTheo или players['FallenTheo'] 

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


## ClickDetector

Server Script
```lua
local click_detector = script.Parent.ClickDetector
local part = script.Parent

function click()
	part.BrickColor = BrickColor.new('Black')
end

click_detector.MouseClick:Connect(click)
```

## RemoteEvent

Server Script
```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = ReplicatedStorage:FindFirstChildOfClass("RemoteEvent")

local function something(player, info)
	print(info)
end

remoteEvent.OnServerEvent:Connect(something)
```

Local Script
```lua

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = ReplicatedStorage:FindFirstChildOfClass("RemoteEvent")

wait(10)
remoteEvent:FireServer("Прошло 10 секунд в local script")

```

## Кнопка Gui

StarterGui -> ScreenGui -> TextButton -> LocalScript:

```lua
local button = script.Parent

local function onButtonActivated()
	print('Мы нажали на кнопку')
end
button.Activated:Connect(onButtonActivated)

```

## Касание других партов

```lua
local touch_objects = clone.Trunk:GetTouchingParts()

-- Второй вариант касание:
local Workspace = game:GetService("Workspace")
local foundParts = Workspace:GetPartsInPart(clone.Box_Trunk)
```

(Не работает, когда нет CanCollide)

	
## Анимация

![](../../video/Animation%20Roblox.mkv)

<video width="320" height="240" controls>
  <source src="../../video/Animation%20Roblox.mkv" type="video/mp4">
</video>