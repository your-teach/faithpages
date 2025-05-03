# Разное `py`

## Создание виртуального окружения venv
`python3 -m venv ENV_NAME`  

## Виртуальное окружение в CMD
`venv\Scripts\activate.bat`  

## Виртуальное окружение в PowerShell
1. Открой PowerShell от имени администратора.
2. Введи команду "Set-ExecutionPolicy unrestricted" без кавычек.
3. Теперь, активировать виртуальное окружение (не важно в этом же окне или в новом).
`python env\Scripts\activate` -> `env\Scripts\activate`  

## Виртуальное окружение в Ubuntu
`source venv/bin/activate`  

## Виртуальная среда Conda
Создание новой:  
`conda create --name=ENV_NAME python=3.11`  

Первый запуск:  
`source activate base`  
а потом  
`conda activate my_env`  

Активация:  
`conda activate ENV_NAME`  
Деактивация:  
`conda deactivate ENV_NAME`  
Деактивация base:  
`conda deactivate base` или просто `conda deactivate`  

## Установить пакет из Github
`pip install git+https://github.com/username/name_package`  