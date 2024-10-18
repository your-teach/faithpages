# Разное `py`

## Команды pip
    -способы импорта:
        `import module as md`
        `from module import *`
        `from module import <attribute>`
        `from module import <attribute> as attr`
    -python --version - посмотреть версию пайтон
    -pip install name_module - установка
    -pip uninstall package-name - удаление
    -pip install -r requirements.txt - установить список зависимостей из файла
    -pip list - список установленных модулей
    -pip show <package> - посмотреть версию пакета
    -pip install <package> --upgrade - обновить конкретный пакет
    -pip install <package> -U - обновить конкретный пакет

    Если pip недоступен:
    -Как установить модуль на конкретную версию python, варианты:
        - C:/Users/ErgoDeath/AppData/Local/Programs/Python/Python312/python.exe -m pip install pyglet
        - /usr/local/bin/python3.8 -m pip install pip
        - py -3.8 -m pip install package
    -Запуск скрипта:
        - C:/Users/ErgoDeath/AppData/Local/Programs/Python/Python312/python.exe script.py
        - py -3.8 script.py

## Библиотеки и модули
    -random
    -cowsay
    -turtle
    -tkinter
    -PyQt ? набор расширений графического фреймворка, вроде tkinter
    -time
    -datatime
    -calendar
    -os
    -io
        -path
    -sys
    -pygame
    -csv
    -math
    -PIL # предназначен для работы с растровой графикой
    -winreg # позволяет работать с реестром Windows
    -auto-py-to-exe # компиляция / преобразование .py файла в .exe
    -tendo # (from tendo import singleton) при повторном запуске программы вылетит ошибка (Запрещает два раза запускать прогу)
    -webbrowser # открытие ссылок в браузере
    -OpenCV # алгоритм обработки изображений
    -PyAudio 
    -openpyxl -> load_workbook # Прочтение эксель (xlsx) файлов 
    -PyAudio # аудио ввод-вывод
    -itertools
    -pyautogui # програмное управление мышью и клавиатурой
    -python-for-android # упаковка в android apk
    -Buildozer # упаковка в android apk

    -threading # многопоточность
    -queue # очереди
    -accessify
    -socket
    -selectors
    -asyncio  # https://habr.com/ru/post/667630/
    -numpy # поддержка больших многомерных массивов и матриц
    -mypy # инструмент для контроля типа переменной
    -typing | typing.cast() # во время выполнения намеренно ничего не проверяется, чтобы старт программы был как можно быстрее.
    -ursina # 3d
    -Requests - http запросы
    -requests-html - Http запросы, а так же парсинг, в том числе с javascript
    -selenium webdriver - Тоже парсинг, что и выше
    -shutil - скопировать содержимое одного файлового объекта в другой - shutil.copyfileobj()
    -MRjob - выполнение задач связанных с BigData, в том числе Hadoop  

## Термины, сленг, выражения
    -Sequence: последовательность, list, tuple, range, str/unicode, array.array