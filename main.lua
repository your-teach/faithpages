things = {
    ['зажигалка']=20, ['компас']=100, ['фрукты']=500, ['рубашка']=300,
    ['термос']=1000, ['аптечка']=200, ['куртка']=600, ['бинокль']=400,
    ['удочка']=1200, ['салфетки']=40, ['бутерброды']=820, ['палатка']=5500,
    ['спальный мешок']=2250, ['жвачка']=10
}
N = 10000
-- 1. Создаем таблицу только цифр из таблицы things
step_sorted = {}
for k,v in pairs(things) do
    table.insert(step_sorted, v)
end

-- 2. Сортируем таблицу с числами по возрастанию
table.sort(step_sorted) 
-- Сортируем таблицу с числами по убыванию
things_sorted = {}
for x = #step_sorted, 1, -1 do
    table.insert(things_sorted, step_sorted[x])
end

-- 3. Cделаем свап таблицы things, чтобы мы находили, например по ключу 5500 -> 'палатку'
things_swap = {}
for k,v in pairs(things) do
    things_swap[v] = k
end

-- Здесь итоговый цикл, который перебирает отсортированную таблицу, проводит вычисление, и выводит нужные вещи
sm = 0
for k, v in pairs(things_sorted) do
    if sm + v <= N then
        print(things_swap[v])
        sm = sm + v
    end
end

-- Вывод всех элементов таблицы
-- for k,v in pairs(things_sorted) do
--     print(k, v)
-- end