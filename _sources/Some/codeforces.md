# Задачи codeforces

## Слово 
https://codeforces.com/problemset/problem/59/A

## Почти счастливое число
https://codeforces.com/problemset/problem/110/A

## Калькулятор дедушки Довлета
https://codeforces.com/problemset/problem/620/B

## Лифт
https://codeforces.com/problemset/problem/120/A

## Красивая матрица 
https://codeforces.com/problemset/problem/263/A


# Такие себе задачи:
## Игра с кубиком 
https://codeforces.com/problemset/problem/378/A

```python
nums = input()
nums = nums.split()
a, b = int(nums[0]), int(nums[1])
f = 0
t = 0
s = 0
for i in range(1, 7):
    if abs(a - i) < abs(b - i):
        f += 1
    elif abs(a - i) > abs(b - i):
        t += 1
    else:
        s += 1
print(f,s,t)
```

## Команда 
https://codeforces.com/problemset/problem/231/A
```python
n = int(input())
rx = 0
for x in range(n):
    t = input()
    p,v,t = map(int, t.split())
    if p + v + t > 1:
        rx += 1
else:
    print(rx)
```