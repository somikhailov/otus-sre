# Домашние задания

## ДЗ 1 - PoC GTFO

### Цель
Продолжаем подготовку окружения для тестирования SRE-подходов.

### Описание/Пошаговая инструкция выполнения домашнего задания:

* Создайте git-репозиторий (github/bitbucket) доступный для клонирования онлайн.
* Опишите в Readme https://www.makeareadme.com/ что будет происходить:
    - краткое описание проекта
    - как добавить новый код
    - как продеплоить приложение Добавьте Readme в репозиторий

* Создайте диаграмму для будущего приложения используя https://github.com/mingrammer/diagrams 
    - Добавьте диаграмму и ее код в репозиторий

* Создайте локальное окружение для разработки используя Vagrant
    - Добавьте код локального окружения в репозиторий 

* Напишите простой деплой для любого веб-приложения, например
https://github.com/Zenahr/flask-sqlite3-todo-crud и продеплойте приложение на локальное окружение
    - Добавьте код в репозиторий

* Используйте Mkdocs для оформления документации. 
    - Добавьте документацию в репозиторий.

### Критерии оценки
  - 10/10 можно запустить приложение руководствуясь только документацией из доступного онлайн репозитория
  - 8/10 документация, readme и код проекта доступны онлайн, но не запускаются
  - 6/10 документация и readme доступны онлайн, окружение запускается но деплой не готов
  - 4/10 Readme доступно онлайн

---

## ДЗ 2 - Сформулировать SLO для тестового окружения

### Цель
* Цель: закрепить понимание SLI/SLO
* Результат: Получить документ, описывающий SLO для тестового окружения из предыдущей домашней работы

### Описание/Пошаговая инструкция выполнения домашнего задания
* Определить SLI для приложения https://github.com/Zenahr/flask-sqlite3-todo-crud 
* Определить SLI для окружения
* Определить SLO для окружения

### Критерии оценки
* Определены SLI 4/10
* Определены SLI и SLO 8/10
* Описаны непокрываемые кейсы 10/10

---

## ДЗ 3 - Распарсить вывод API и отдать его в формате Prometheus

### Цель
* Использовать базовую автоматизацию сбора данных и их конвертацию в нужный формат, по возможности используя утилиты из лекции

### Описание/Пошаговая инструкция выполнения домашнего задания:

* Формат экспортера можно найти тут https://github.com/prometheus/docs/blob/master/content/docs/instrumenting/exposition_formats.md#text-format-example
* Варианты:
    1. Приложение https://github.com/Zenahr/flask-sqlite3-todo-crud/blob/master/app.py отвечает на три запроса: / GET /add POST /update POST. Проверьте код ответа приложения, время ответа либо иные важдые для ваших SLI на данные запросы и отдайте эту информацию в формате Prometheus.
    2. Получите ответ от API http://open-notify.org/Open-Notify-API/ISS-Location-Now/ и сконвертируйте его в формат Prometheus.

### Критерии оценки
* Экспортер возвращает данные в нужном формате 6/10
* Экспортер возвращает данные для flask приложения 8/10
* Экспортер возвращает данные для flask и внешнего api 10/10

---

## ДЗ 4 - Напишите workflow для n8n

### Цель
* Освоить на практике работу с workflow
* Использовать навыки работы с структурированным текстом

### Описание/Пошаговая инструкция выполнения домашнего задания:

* Нужно проверить что информация в CSV и JSON идентична. Для этого создать n8n workflow сравнивающий два источника данных:
    - http://xmlcalendar.ru/data/ru/2022/calendar.csv
    - http://xmlcalendar.ru/data/ru/2022/calendar.json
* Добавить workflow в ваш git репо и опубликовать в Readme ссылку по которой можно импортировать workflow в n8n.

### Критерии оценки
* Рабочий workflow 8/10
* Добавляется в n8n из URL 10/10

## ДЗ 5 - Дописать роль для исполнения на другом дистрибутиве (.deb/.rpm)

### Цель
* Ознакомиться со структурой Ansible role
* Освоить основные техники работы с кодом для Ansible

### Описание/Пошаговая инструкция выполнения домашнего задания

* Выберете одну из ролей ниже или используйте любую другую роль:
    - https://github.com/kevit/ansible-role-monica
    - https://github.com/kevit/ansible-role-dedcon
    - https://github.com/kevit/ansible-role-funkwhale
* Форкните код
* Допишите необходимый для исполнения на другом дистрибутиве код (например на Centos/Rhel/AWS linux)

### Критерии оценки
* 6/10 добавлена ветка с кодом и отправлен PR
* 8/10 сконфигурирована Molecule для тестирования роли на всех поддерживаемых ролью дистрибутивах
* 10/10 добавлены assert на переменные и специфические для роли тесты в Molecule