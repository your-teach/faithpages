# Функции lua

## Функции

```lua

-- Объявление функции:
function robot()
    print('Помахать')
    print('Подойти и пожать руку')
    print('Приветствие:')
    print('Здравствуйте, человек!')
end

-- Запуск функции
robot()

-- Функции с аргументами
function robot(name, lastname)
    print('Помахать')
    print('Подойти и пожать руку')
    print('Приветствие:')
    print('Здравствуйте, ' .. name ..' '.. lastname)
end

robot('Федор', 'Морозов')
robot('Кирилл', 'Варшавский')
robot('Михаил', 'Мельников')


-- Возвращаемые функции
function summa(a, b)
    res = a + b
    return res
end

r = summa(2, 3)
r2 = summa(10,20)
print(r)
print(r2)

-- Альтернативный способ создания функции
one = function()
    print('Функция one')
end

one()

-- Функции могут хранится в таблицах
t = {}
t.three = function()
    print('functioin in table')
end

t.three()

```