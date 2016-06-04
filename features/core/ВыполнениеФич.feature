# language: ru

Функционал: Выполнение фич
	Как Разработчик
	Я Хочу, чтобы у меня была возможность выполнять фичи из feature-файлов

Сценарий: Выполнение фичи из одного файла

	Когда я подготовил тестовый каталог для фич
	И установил тестовый каталог как текущий
	И я подготовил специальную тестовую фичу "ПередачаПараметров"
	И я подставил файл шагов с уже реализованными шагами для фичи "ПередачаПараметров"
  И я запустил выполнение фичи "ПередачаПараметров"
	Тогда проверка поведения фичи "ПередачаПараметров" закончилась с кодом возврата 0

Структура сценария: Выполнение фич из каталога <Каталог>
	Когда я подготовил тестовый каталог для фич
	И установил тестовый каталог как текущий
	И я подготовил специальную тестовую фичу "ПередачаПараметров"
	И я подставил файл шагов с уже реализованными шагами для фичи "ПередачаПараметров"
	Тогда проверка поведения фич с передачей параметра "" из каталога <ПутьКаталога> закончилась с кодом возврата 0

Примеры:
		| Каталог | ПутьКаталога |
		| . | . |
		| с использованием полного пути каталога | КаталогТестовыйПолный |
		| с использованием относительного пути каталога | КаталогТестовыйОтносительный |


Сценарий: Выполнение всех фич из каталога фич проекта

	Когда я выполнил подключение тестового скрипта "ПроверкаГенерации"
	И я получил набор фич из каталога фич проекта исключая текущую фичу
	И установил каталога фич проекта как текущий
	Тогда проверка поведения каждой фичи из набора фич закончилась с кодом возврата 0
