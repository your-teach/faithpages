variable = 'глобальная переменная'
def example():
    # print(variable) # ошибка, т.к. считывается как локальная
    variable = 'локальная переменная'
    print(variable) # 'локальная переменная'
example() 
print(variable) # 'глобальная переменная'