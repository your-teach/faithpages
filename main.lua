-- Запись и чтение файла
-- "r" - чтение
-- "w" - перезапись
-- "a" - дозапить

-- Чтение
local filepath = "C:\\HOME\\PROG\\text.txt"
local fileread = io.open(filepath, "r")
print(fileread:read())
-- Перезапись
local filewrite = io.open(filepath, "w")
filewrite:write("new data")
filewrite:close()
-- Дозапись (старое удалится)
local filewrite2 = io.open(filepath, "a")
filewrite2:write("\nadd in file")
filewrite2:close()

