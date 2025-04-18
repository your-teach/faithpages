# Скрипты `rblx`

## Один цвет на всех

Поменять цвет всех партов в workspace на синий
```lua
wait(3)
objects = workspace:GetChildren()
for i, obj in pairs(objects) do
	if obj.ClassName == 'Part' then
		obj.BrickColor = BrickColor.new('Bright blue')
	end
end
```

## Бесконечные мячики

- Создать парт Ball 
- Включить у него Anchored
- Создать в нем скрипт с содержимым:
	```lua
	local ball = script.Parent

	count = 1
	while true do
		wait(0.3)
		local clone = ball:Clone()
		clone.Anchored = false
		clone.Parent = workspace
		clone.Transparency = 0
		clone.BrickColor = BrickColor.new(count)
		count = count + 1
	end
	```

# Плавная дверь
````{toggle}
```lua
local proximityPrompt = script.Parent.ProximityPrompt
local TweenService = game:GetService("TweenService")
local door = script.Parent
local pivotCF = door:GetPivot()
local newCF = pivotCF * CFrame.Angles(0, math.rad(90), 0)
local newCF_close = pivotCF * CFrame.Angles(0, -(math.rad(90)), 0)
local tweenInfo = TweenInfo.new(2)
local open = false

local function tweenTo(model, cframe)
	local CframeValue = Instance.new("CFrameValue")
	CframeValue.Value = model:GetPivot()

	local tween = TweenService:Create(CframeValue, tweenInfo, {Value = cframe})
	tween:Play()

	CframeValue:GetPropertyChangedSignal("Value"):Connect(function()
		model:PivotTo(CframeValue.Value)
	end)

	tween.Completed:Connect(function()
		CframeValue:Destroy()
	end)
end

proximityPrompt.Triggered:Connect(function() 
	if open then
		local pivotCF = door:GetPivot()
		local newCF_close = pivotCF * CFrame.Angles(0, math.rad(-90), 0)
		tweenTo(door, newCF_close)
		open = false
	else
		local pivotCF = door:GetPivot()
		local newCF = pivotCF * CFrame.Angles(0, math.rad(90), 0)
		tweenTo(door, newCF)
		open = true
		workspace.Door.ProximityPrompt.Enabled = false
	end
end)
```
````