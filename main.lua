things = {
    ['���������']=20, ['������']=100, ['�����']=500, ['�㡠誠']=300,
    ['�ମ�']=1000, ['���窠']=200, ['���⪠']=600, ['�������']=400,
    ['㤮窠']=1200, ['ᠫ�⪨']=40, ['����த�']=820, ['����⪠']=5500,
    ['ᯠ��� ��讪']=2250, ['���窠']=10
}
N = 10000
-- 1. ������� ⠡���� ⮫쪮 ��� �� ⠡���� things
step_sorted = {}
for k,v in pairs(things) do
    table.insert(step_sorted, v)
end

-- 2. �����㥬 ⠡���� � �᫠�� �� �����⠭��
table.sort(step_sorted) 
-- �����㥬 ⠡���� � �᫠�� �� �뢠���
fin_sorted = {}
for x = #step_sorted, 1, -1 do
    table.insert(fin_sorted, step_sorted[x])
end

-- 3. C������ ᢠ� ⠡���� things, �⮡� �� ��室���, ���ਬ�� �� ����� 5500 -> '������'
things_swap = {}
for k,v in pairs(things) do
    things_swap[v] = k
end

-- ����� �⮣��� 横�, ����� ��ॡ�ࠥ� �����஢����� ⠡����, �஢���� ���᫥���, � �뢮��� �㦭� ���
--

-- �뢮� ��� ����⮢ ⠡����
for k,v in pairs(fin_sorted) do
    print(k, v)
end