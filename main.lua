-- ������ � �⥭�� 䠩��
-- "r" - �⥭��
-- "w" - ��१�����
-- "a" - ��������

-- �⥭��
local filepath = "C:\\HOME\\PROG\\text.txt"
local fileread = io.open(filepath, "r")
print(fileread:read())
-- ��१�����
local filewrite = io.open(filepath, "w")
filewrite:write("new data")
filewrite:close()
-- �������� (��஥ 㤠�����)
local filewrite2 = io.open(filepath, "a")
filewrite2:write("\nadd in file")
filewrite2:close()

