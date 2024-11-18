# Настройки систем

## Настройки Git+Vscode.

1. Установка Git https://git-scm.com/
2. Регистрация в GitHub 
3. Авторизация (возможно не нужна), вводим GitHub данные:
    - git config --global user.name "John Doe"
    - git config --global user.email johndoe@example.com
3. Проверяем "Система управления версиями"
    - Если недоступно идем в расширения -> @builtin git -> Выключаем Git
    - Если снова недоступно -> Включаем Git
4. Клонировать репозиторий -> F1 -> Clone -> Вставить ссылку репозитория
5. В какой-то момент нужно будет авторизоваться через браузер
6. Чтобы выйти из git акканта -> Поиск по windows -> Диспетчер учетных записей -> Удалить уч. данные git

## Исправление проблемы ввода заглавных букв в Powershell

[Источник](https://danshin.ms/PSReadLine-problem/)

1. Открываем Powershell от имени администратора, вводим команду: Remove-Module PSReadLine
2. Закрываем Powershell и Редактор кода Visual Studio code
3. Затем удаляем или переименовываем папку лежащую в
C:\Program Files\WindowsPowerShell\Modules\PSReadLine , под названием "2.0.0"
4. Запускаем Powershell от имени администратора
5. Устанавливаем модуль, который удалили: Install-Module PSReadLine
6. Разрешить remotesigned: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned 
    -ИЛИ Set-ExecutionPolicy AllSigned

## Изменить кодировку файла в vscode.

- Внизу нажать на utf-8 -> Сохранить в кодировке -> Cyrillic (CP 866)

## При запуске выдает "Python".
1. Лучшее решение:
    Прописать в windows в PATH переменных окружения ссылки на python и pip:
    Поиск -> Изм.Сис.Переменных Среды -> Переменные среды -> Path -> Изменить -> Добавить:
        - C:\Users\ErgoDeath\AppData\Local\Programs\Python\Python310\Scripts\
        - C:\Users\ErgoDeath\AppData\Local\Programs\Python\Python310\
2. Второе решение:
    В settings.json вписать следующее:
        "code-runner.executorMap": {
            "python": "---" 
        }
    "---" -> "& C:/Users/ErgoDeath/AppData/Local/Programs/Python/Python312/python.exe"

## Visual Studio Code + Lua на MacOs

1. (Скачать с сайта)[https://www.lua.org/download.html] последнюю версию Lua 
2. Открыть терминал, с помощью одного из вариантов:
    - Finder -> Программы -> Утилиты -> Терминал / Terminal
    - Launchpad -> вводиим в поиске "Terminal"
3. `cd Downloads`
4. `ls`
5. `tar zxf lua-5.4.7.tar.gz`
6. `cd lua-5.4.7`
7. `sudo make macosx install`