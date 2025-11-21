# План обучения `lua`
## Установка Vs Code + Lua 
https://www.youtube.com/watch?v=X6BqMZyzAs4

    1. https://code.visualstudio.com/download
    2. https://github.com/rjpcomputing/luaforwindows/releases
    3. RuLang: Шестерёнка -> Command Pallete -> Вводим 'lang' -> Configure Display Language -> 'Русский'
    4. Расширение Lua (sumneko)
    5. Расширение Code Runner
    6. Параметры:
        - Установить стандартное автосохрание -> Файл -> Автосохранение
        - Изменить шрифт -> editor.fontSize -> 16
        - Code-runner: Save file before run [галочка стоит]
        - Code-runner: Run in terminal [галочка стоит]
    7. Settings.json
        -Открывать в кодировке cp866:
            "[lua]": {
                "files.encoding": "cp866",
            }
        -Очистка консоли:
            "code-runner.executorMap": {
                "lua": "clear; lua" }
    8. Создать папку на рабочем столе -> Открываем её в Vscode -> Далее создаем два файла -> main.lua/py theory.lua/py
    9. Выключить Ai chat и прочее в настройках: Chat: Disable Ai Freatures
    10. Выключить предупреждение об local
        -создать папку .vscode с содержимым:
            {
                "Lua.diagnostics.disable": [
                    "lowercase-global"
                ]
            }
    
https://cronos.ru/kb-cronospro-lua.html
https://user.su/lua/index.php?id=36
https://ru.wikibooks.org/wiki/Lua/Типы_данных

## Введение.
    -Команда, с которой по традиции начинается обучение языка программирования.
        print("Hello World")
    -Что такое комментарии. --

## Переменные.
    -Зачем они нужны, как мы бы жили без них.
    -Представляем, что переменная это коробка в которую мы можем поместить только одно значение.
    -Оператор присваивания:
        name = 'Ivan'
    -Как можно и как нельзя называть переменные:
        -Название переменной желательно должно соответствовать ее содержанию.
        -Можно: 
            isName = nil
            my_name = nil
            number1 = nil
            k0l0b0k = nil
            KEK = nil
        -Нельзя: 
            1var
            использовать название команд
            спец символы !@#
    -Одна и та же переменная может иметь разные значения в разных частях кода:
        a = 'one'
        print(a)
        a = 'two'
        print(a)
        -это обозначает, что Lua читает строки поочереди следуя их нумерации.
    -Чувствительность к верхнему и нижнему регистру:
        a = 'one'
        A = 'two'
    -Как поместить значение переменной в другую переменную:
        a = 42
        b = a
        -Сперва читаем то что справа от равно, а потом слева от равно.
    -Поменять значения переменных:
        a = 0
        b = 1

        c = a
        a = b
        b = a
    -Поменять значения переменных: a, b = b, a
    -Множественное присваивание: x, y, z = 1, 2, 3
    -Как обозначается ничего: nil
    -При выводе несуществующей переменной результат будет nil

## Типы данных.
    -Можно говорить: "Типы данных" или "Типы переменных"
        string - СТРОКИ
        number - ЧИСЛА
        boolean - ЛОГИКА (true/false)
    -Каждый тип можно представить в виде комнаты со своими правилами.
    -Чем отличаются типы:
        Это каждого типа есть свои правила.
        К числам можно применять знак плюс, а к строкам и логике - нет.
    -Примеры:
        a = 'text 123' -- string    (Самое главное правило - наличие кавычек)
        b = 42 -- number    (Самое главное правило - наличие только цифр, без пробелов)
        c = true -- boolean     (Только true или false)
    -type() - Команда, которая выдает тип переменной.

## Входные данные.
    -io.read() - Команда, которая ожидает ввод данных с терминала/консоли

## Арифметические операторы.
    -Правила которые работают с типом number
    a = 1 + 1
    b = 2 - 2
    c = 3 * 3
    d = 4 / 4
    f = 3 ^ 4 -- возведение числа 3 в степень 4
    g = (2 + 2) * 2 -- скобки создают приоритет, как в математике

    h = 7 % 6 -- остаток от деления

    i = 0
    i = i + 1 -- увеличить переменную на единицу

## Строки.
    s = "Двойные кавычки"
    s = 'Одинарные кавычки'
    -- print("'Arrival' is good cinema") -- Кавычки в строке
    s = [[ long
                long
                        lines]]
    s = 'текст'
    l = #s -- Находим длину строки в байтах
    l = string.len(s) -- Работает точно так же, как #. Так что в ней нет смысла.
    l = utf8.len(s) -- Более точный подсчет длины строки
    a = 'Hello'
    b = 'World'
    s = a..b -- Оператор .. соединяет строки
    s = 'one\ntwo' -- Экранирование, перевод строки на новую

    Срезы строк.
        text = 'my string variable'
        result = text:sub(4,9) -- находим символы с 4 по 9, 'string'
        result = text:sub(1,1) -- находим первый символ строки, 'm'
    Методы строк.
        string.find(var, 'кс') - возвращает индекс первого найденного 'кс', иначе nil
        Остальные методы строк https://quikluacsharp.ru/2015/03/21/funktsii-raboty-so-strokami-v-qlua-lua/

## Условные операторы.
    >
    <
    >=
    <=
    ==    РАВНО
    ~=    НЕ РАВНО

    a = 0 < 1 -- true
    b = 0 == 1 -- false
    c = 'abc' == 'abc' -- true
    d = 'a' < 'b' -- true
    e = '!' > '?' -- false
    f = true == false -- false

## Логические операторы.
    -and 
        true and true -- true
        true and false -- false
        false and false -- false
    -or
        true or true -- true
        true or false -- true
        false or false -- false
    -not
        not true -- false

    -and имеет приоритет выше, чем or:
        true or false and false or true and false or false

## Приоритетность знаков (сверху-вниз).
|  Операторы  |  Описание  |
| :- | :- |
|  ()  |  Скобки  |
|  ^  |  Возведение в степень  |
|  not  |  Логическое НЕ  |
|  *, /  |  Умножение и деление  |
|  +, -  |  Сложение и вычитание  |
|  ..  |  Соединение строк  |
|  <, >, <=, >=, ~=, ==  |  Условные операторы  |
|  and  |  Логическое И  |
|  or  |  Логическое ИЛИ  |

## Преобразование типов данных.
    -При сравнении числа введенного с помощью io.read() с другим числом возникает ошибка:
        enter = io.read()
        print(enter > 5)
    -В это случае нам помогут функции изменяющие тип переменной.
        -tonumber(var) - переводит переменную var в число
        -tostring(var) - переводит переменную var в строку
    -Не забываем с помощью type() проверять тип переменной.
    -Знаки '..' и '+' автоматически меняют тип значений.
    -Устное задание.
        Назвать типы переменных каждого из следующих выражений, number/string/boolean:
            -- word = 'Programming'
            -- a = 101
            -- b = '42'
            -- c = text -- nil
            -- d = '2' + 2
            -- e = 0..'1' -- ошибка
            -- f = true
            -- g = 'false'
            -- р = '-99'..1

## Условия.
-if    elseif     else

-Самый простой пример
```lua
n = 5
if n == 5 then -- или n > 0
    print("число равно 5")
end
```

-Температура на улице
```lua
temp = tonumber(io.read())
if temp > 10 then
    print('Погода супер, идем гулять')
    print('.....')
elseif temp > 0 then
    print('Идем гулять, но оденемся потеплее')
elseif temp < 0 then
    print('Лучше остаться дома, посмотреть кино')
else
    print('Ого, температура ровно ноль')
end
```

-Комнаты
```lua
key = 'blue'
if key == 'blue' then
    print('Синия комната')
elseif key == 'red' then
    print('Красная комната')
elseif key == 'green' then
    print('Зеленая комната')
else
    print('Запасная комната')
end
```

-Что такое заголовок/тело.  
-Что такое табуирование, и где находится кнопка TAB.  
-if может быть только один и только в начале  
-elseif может быть неограниченное количество  
-else может быть только один и только в конце  
-Вывести "yes", если число меньше 10, иначе "no"  

-Как найти четное число.
```lua
n = io.read()
if n % 2 == 0 then
    print("четное")
else
    print("нечетное")
end
```
-Является ли переменная строкой:
```lua
s = 'tick'
if type(s) == 'string' then
    print('да')
else 
    print('нет')
end
```
-Что такое локальный переменные (local a = 'hello')
```lua
if true then
    local c = true
    print(c) -- true
end
print(c) -- nil, так как переменная локальная, и работает только в условии выше
```

## Таблицы.
    -Если в переменную необходимо положить несколько значений, то здесь нам помогут таблицы.
        animals = {'Cat', 'Dog', 'Pig', 'Horse'}
        print(animals[1]) -- Выводим первое значение таблицы
        print(animals[6]) -- Выведет nil
        print(#animals) -- Длина таблицы
        animals[5] = 'Cow' -- Положить на 4-е место 'Cow'
        animals[1] = 'Kitty Cat' -- Заменить 1-е значение на 'Kitty Cat'
        print(animals[5])
        animals[100] = 100 -- Здесь таблица превратится в разряженную (не будет показываться точная длина)
        t = {} -- пустая таблица
    -Добавить элемент в конец таблицы:
        t = {'a', 'b', 'c'}
        l = #t
        t[l + 1] = 'd'
    -Таблицы в таблице
        t = {
            {101, 102, 103},
            {201, 202, 203},
            {301, 302, 303}
        }
        print(t[1][3]) -- находим первую таблицу [1], далее третий элемент в таблице [3]
    
    -Использование таблицы как словаря (Ключ=Значение).
        t = {['one'] = 1, two = 2}
        print(t['one']) -- выводим элемент с ключем 'one'
        print(t.one) -- Тоже самое что вывод выше

        t.three = 3 -- Добавим в таблицу three = 3
        t:four = 4 -- Второй вариант, four = 4
        t['five'] = 5 -- Третий вариант
    
    -Методы таблиц.
        t = {'c', 'b', 'a'}
        table.sort(t) -- Сортирует таблицу по возрастанию
        table.insert(t, 'e') -- положить 'e' в конец таблицы
        table.insert(t, 1, 'e') -- сдвинуть таблицу, и положить 'e' на первое место 
        table.remove(t, 1) -- Удаление элемента под номером 1, из таблицы t
        print(t[1])

## Циклы.
    --while
        --Циклы нужны для того, чтобы не писать один кусочек кода много раз вручную.
        --Повторение кода с интервалом
        local socket = require 'socket'
        while true do
            print("Какой-то код, который нужно бесконечно повторять с интервалом в 5 секунд")
            socket.sleep(5)
        end
        --Цикл, который выводит числа от 1 до 10
            score = 0
            while score < 10 do
                score = score + 1
                print(score)
            end
        --Бесконечный цикл со счетчиком
        score = 0
        while true do
            print(score)
            score = score + 1
        end

        -Задание: Написать цикл, который выводит числа от 0 до 3, и прочитать его.
        -Задание: Написать цикл, который выводит числа от -1 до 1, и прочитать его.
        -Задание: Написать цикл, который выводит числа от 20 до 10.

        -Можно использовать условия внутри циклов.
        -Цикл, который выводит каждую букву отдельно:
            i = 0
            text = 'hello world'
            while i < #text do
                i = i + 1
                print(text:sub(i,i))
            end
        -Аналогичный цикл, но который пропускает все буквы 'o'
            i = 0
            text = 'hello world'
            while i < #text do
                i = i + 1
                if text:sub(i,i) ~= 'o' then
                    print(text:sub(i,i))
                end
            end
        -Задание: Написать цикл, который выводит четные числа от 0 до 100.
        -break (пример с остановкой бесконечного цикла)

    -for
        -Отличается от while тем, что имеет собственную переменную,
        эта переменная отличается от привычных нам переменных, тем
        что она каждое повторение меняет свое значение.
        -Цикл, который выводит числа от 1 до 10
            for x = 0, 10 do
                print(x)
            end
        -Тот же цикл, но с шагом 2
            for x = 0, 10, 2 do
                print(x)
            end
        -С помощью for и специальной функции pairs или ipairs можно перебрать таблицу.
        -ipairs для простых таблицы
            t = {'a','b','c','d'}
            for k, v in ipairs(t) do
                print(x)
            end
        -pairs для словарей-таблиц
            y = {['one'] = 1, ['two'] = 2}
            for k, v in pairs(y) do  -- pairs работает с массивами (словари)
                print(k, v)
            end
        -Цикл, который выводит числа в обратном порядке от 10 до 0.
        for x = 10,0,-1 do
            print(x)
        end
        -Здесь так же можно использовать break

        -Цикл имеет заголовок и тело.
        -Что значит одно повторение цикла/один круг или другими словами "Итерация".

## Функции.
```lua
--Команда которая имеет в конце скобки называется функцией, она выполняет заранее подготовленный список действий в тот момент, когда мы ее вызовем.
--Существует два вида фукнций: невозвращаемые и возвращаемые функции.

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
print(r) -- 5
print(r2) -- 30

-- Функции, которые не имею return, возвращают nil, и называеются "невозвращаемыми"
r3 = robot()
print(r3) -- nil

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
-- t:three()

```
        

## Запись и чтение файла.
```lua
-- "r" - чтение
-- "w" - перезапись
-- "a" - дозапить

local filepath = "C:\\HOME\\PROG\\text.txt"
-- Чтение
local fileread = io.open(filepath, "r")
print(fileread:read()) -- прочитать первую строку
print(fileread:read()) -- прочитать вторую строку
-- Чтение всех строк файла через цикл
for line in fileread:lines() do
    print(line)
end
-- Перезапись
local filewrite = io.open(filepath, "w")
filewrite:write("new data")
filewrite:close()
-- Дозапись (перед записью, файл очищается)
local filewrite2 = io.open(filepath, "a")
filewrite2:write("\nadd in file")
filewrite2:close()

```

https://oojoo.ru/11-zapis-i-chtieniie-iz-faila/

## Модули
### Импорт модуля
```lua
local socket = require 'socket'
socket.sleep(3)
```

### Создание модуля
Файл модуля
```lua
local items = {name = 'Storm', health = 790, mana = 540}

items.name = 'Storm'
items.health = 790
items.mana = 540

function items.congrats()
    print("Congratulations!!!")
end

return items
```
Файл импорта
```lua
local items = require 'a'
print(items.name)
```

### Старый способ создания модуля
Файл модуля
```lua
module("mymodule", package.seeall)

function foo() -- create it as if it's a global function
    print("Hello World!")
end
```
Файл импорта
```
require "mymodule"
mymodule.foo()
```

## Разное.
    Рекурсивные функции?

### Сортировка по убыванию
````{toggle}
```lua
-- сортировка по убыванию
local arr = {20, 30, 10, 50}
log ("clear") log ("mode compact")
log ("Массив до сортировки:")
for i = 1, #arr do
    log (arr[i])
end
table.sort (arr, function (a, b) return (a > b) end)
log ("Массив после сортировки:")
for i = 1, #arr do
    log (arr[i])
end
```
````

### Тернарный оператор

```lua
n = -1
-- Тернарный оператор
step = n > 0 and 1 or -1
-- Альтернатива через обычное условие
if n > 0 then
    step = 1
else
    step = -1
end
-- Вывод 1 или -1
print(step)
```