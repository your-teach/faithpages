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

