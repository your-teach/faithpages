# Selenium на Vps
## Запустить Selenium ChromeDriver на Ubuntu
[Ссылка на первоисточник](https://www.youtube.com/watch?v=Jw9Gar_vcHY)

Установка venv на сервер  
`sudo apt install python3-venv`  

Установка venv в директорию проекта  
`python3 -m venv ../dir_project/venv_name`  

Входим в venv  
`source venv_name/bin/activate`  

Обновление pip  
`pip install -U pip`  

Обновление setuptools  
`pip install -U setuptools`  

Установка selenium  
`pip install selenium`  

Обновление пакетов  
`sudo apt update && sudo apt upgrade`  

Установка необходимых для корректной работы google-chroma пакетов:  
`sudo apt install -y libxss1 libappindicator1 libindicator7`  

Скачать google-chrome  
`sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`  

Установка google-chrome  
`sudo dpkg -i google-chrome*.deb`  
или  
`sudo dpkg --install google-chrome-stable_current_amd64.deb`  

Фиксим/подтягиваем зависимости  
`sudo apt install -y -f`  

Проверить версию  
`google-chrome --version`  

На этом этапе надо скачать chrome-driver той версии, которая у вас.  
Но я использую модуль webdriver_manager, который автоматически подтягивает нужную версию хрома.  

----
## Решение проблем:
Если возникают ошибки и проблемы, подтянуть модули:   
`sudo apt --fix-broken install`  

----
"Could not install packages due to an EnvironmentError..."  
`pip install --user package_name`  

----
"Can not perform a '--user' install. User site-packages are not visible in this virtualenv."  
1. Перейдите к `pyvenv.cfg` файлу в папке `venv`.  
2. Установите и сохраните изменения `include-system-site-packages` на `true`  
3. Повторно активируйте виртуальную среду.  

----
"urllib3 (2.2.3) or chardet (3.0.4) doesn't match a supported version!"  
`pip3 install --upgrade requests`  

