# Настройки систем

## Настройки Git+Vscode.

1. Установка Git https://git-scm.com/
2. Регистрация в GitHub 
3. Авторизация (возможно не нужна), вводим GitHub данные:
    - `git config --global user.name "John Doe"`
    - `git config --global user.email johndoe@example.com`
3. Проверяем "Система управления версиями"
    - Если недоступно идем в расширения -> `@builtin git` -> Выключаем Git
    - Если снова недоступно -> Включаем Git
4. Клонировать репозиторий -> F1 -> Clone -> Вставить ссылку репозитория
5. В какой-то момент нужно будет авторизоваться через браузер
6. Чтобы выйти из git акканта -> Поиск по windows ->  
            Диспетчер учетных записей -> Удалить уч. данные git

- _Перестать отслеживать проект (отменить инициализацию)_
    _Прописать в git bash:_ `rm -rf .git` 

## Проблема заглавных букв в Powershell

[Источник](https://danshin.ms/PSReadLine-problem/)

1. Открываем Powershell от имени администратора, вводим команду: `Remove-Module PSReadLine`
2. Закрываем Powershell и Редактор кода Visual Studio code
3. Затем удаляем или переименовываем папку лежащую в
`C:\Program Files\WindowsPowerShell\Modules\PSReadLine` , под названием `2.0.0`
4. Запускаем Powershell от имени администратора
5. Устанавливаем модуль, который удалили: `Install-Module PSReadLine`
6. Разрешить remotesigned: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned`
    -ИЛИ `Set-ExecutionPolicy AllSigned`

## При запуске выдает "Python".
1. Лучшее решение:\
    Прописать в windows в PATH переменных окружения ссылки на python и pip:\
    Поиск -> Изм.Сис.Переменных Среды -> Переменные среды -> Path -> Изменить -> Добавить:
        - `C:\Users\Username\AppData\Local\Programs\Python\Python310\Scripts\`
        - `C:\Users\Username\AppData\Local\Programs\Python\Python310\`
2. Второе решение:\
    В settings.json вписать следующее:
    ```json
    "code-runner.executorMap": {
        "python": "& PATH" 
    }
    // PATH:
    // C:/Users/Username/AppData/Local/Programs/Python/Python312/python.exe
    ```

## VScode + Lua на MacOs

1. [Скачать с сайта](https://www.lua.org/download.html) последнюю версию Lua 
2. Открыть терминал, с помощью одного из вариантов:
    - Finder -> Программы -> Утилиты -> Терминал / Terminal
    - Launchpad -> вводим в поиске "Terminal"
3. `cd Downloads`
4. `ls`
5. `tar zxf lua-5.4.7.tar.gz`
6. `cd lua-5.4.7`
7. `sudo make macosx install`

## Кодировка файла в vscode.
- Внизу нажать на utf-8 -> Сохранить в кодировке -> Cyrillic (CP 866)

## Conda в терминале
Автоактивация базовой среды conda:
`conda config --set auto_activate_base true`  
Использование системной среды по умолчанию:
`conda config --set auto_activate_base false`  

## Если pip недоступен
- Как установить модуль на конкретную версию python, варианты:
    - `C:/Users/Username/AppData/Local/Programs/Python/Python312/python.exe -m pip install pyglet`
    - `/usr/local/bin/python3.8 -m pip install pip`
    - `py -3.8 -m pip install package`
- Запуск скрипта:
    - `C:/Users/Username/AppData/Local/Programs/Python/Python312/python.exe script.py`
    - `py -3.8 script.py`

## Переменные среды
### Windows
#### Через модуль python-dotenv
Создать файл `.env` в корневой директории проекта, с похожим содержимым:
```
login=qwerty
pass=12345
```
Далее код на Python:
```python
from dotenv import load_dotenv
import os

data = load_dotenv()
print(data) # True если в файле .env что-то есть

print(os.environ["login"]) # qwerty
print(os.environ["pass"]) # 12345
```

#### PowerShell или CMD:
Временная переменная среды
```
set login=12345
```
Создание постоянной переменной среды (изменения происходят после перезапуска терминала):
```
setx my_login "54321" /M
```
Проверка переменной:
```
echo %login%
```
Удаление временной:
```
set login=
```
Как удалить постоянную переменную непонятно, следующая команда оставляет переменную в списке (изменения происходят после перезапуска терминала):
```
setx my_login ""
```
Использование переменной среды в коде Python:
```python
import os
print(os.getenv("my_login"))
```

#### Через настройки visual studio code, settings.json:
```json
"terminal.integrated.env.windows": {
    "MYLOGIN": "qwerty"
}
```
```python
print(os.getenv("MYLOGIN"))
```
### Linux

Создание временной переменной через терминал:
```
export TEST_VAR="Hello World!"
```

Применить изменение:
```
source ~/.bash_profile или source ~/.zshrc
```

Проверка
```
echo $TEST_VAR
```

Постоянная переменная:
- Если переменная нужна для всех пользователей, редактируйте /etc/environment
- Если переменная нужна только для текущего пользователя, редактируйте .bashrc (для bash) или .zshrc (для zsh) в домашней директории пользователя

Для /etc/environment:
```
sudo nano /etc/environment
VARIABLE_NAME="value"
```

Для .bashrc (или .zshrc):
```
nano ~/.bashrc (или nano ~/.zshrc)
export VARIABLE_NAME="value"
```

Сохранение изменений:
- Для /etc/environment: Перезагрузите систему или закройте и заново откройте терминал. 
- Для .bashrc (или .zshrc): Выполните команду:
```
source ~/.bashrc (или source ~/.zshrc). 
```

### MacOS
macOS обычно использует Bash или Zsh (узнать оболочку echo $SHELL)

Временная переменная:
```
export MY_VARIABLE="my_value"
```

Постоянная переменная:
Добавить через nano в файл ~/.bash_profile или ~/.zshrc
следующую строку:
```
export MY_VARIABLE="my_value"
```
Применить изменение:
```
source ~/.bash_profile или source ~/.zshrc
```
Проверить переменную:
```
echo $MY_VARIABLE
```
