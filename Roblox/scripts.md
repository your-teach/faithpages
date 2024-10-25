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