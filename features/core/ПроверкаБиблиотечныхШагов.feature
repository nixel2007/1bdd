# language: ru

Функционал: Выполнение библиотечных шагов
	Как Разработчик
	Я Хочу чтобы файл фичи успешно выполнялся, даже если нет собственных шагов

Контекст: тестовый каталог с одной фичей

  Допустим я подготовил тестовый каталог для фич
  И установил тестовый каталог как текущий
  И я подготовил специальную тестовую фичу "ПередачаПараметров"
  И я подставил файл шагов с уже реализованными шагами для фичи "ПередачаПараметров"
  И я создал файл фичи "ФичаБезШагов" с текстом
  """
    # language: ru
    Функционал: Библиотечные шаги
    Сценарий: Использование шагов из другой фичи
      Когда я передаю параметр "Минимальный"
      Тогда я получаю параметр "Минимальный"
  """
  
Структура сценария: <Сценарий>

	Тогда проверка поведения фичи "ФичаБезШагов" с передачей параметра <ПараметрКоманднойСтроки> закончилась с кодом возврата 0

Примеры:
	| Сценарий | ПараметрКоманднойСтроки |
	| Библиотечные шаги находятся в одном файле | -require ПередачаПараметров.feature |
	| Автоматическая загрузка всех шагов как библиотечных из каталога фичи |  |

Контекст:тестовый каталог с подкаталогами

	Когда я подготовил тестовый каталог для фич
	И установил тестовый каталог как текущий
	И я создал еще один каталог "lib"
	И установил каталог "lib" как текущий
	И я подготовил специальную тестовую фичу "ПередачаПараметров"
	И я подставил файл шагов с уже реализованными шагами для фичи "ПередачаПараметров"
	И установил тестовый каталог как текущий
	И я создал файл фичи "ФичаБезШагов" с текстом
	"""
		# language: ru
		Функционал: Библиотечные шаги
		Сценарий: Использование шагов из другой фичи
			Когда я передаю параметр "Минимальный"
			Тогда я получаю параметр "Минимальный"
	"""

Структура сценария: <Сценарий>

	Тогда проверка поведения фичи "ФичаБезШагов" с передачей параметра <ПараметрКоманднойСтроки> закончилась с кодом возврата 0

Примеры:
	| Сценарий | ПараметрКоманднойСтроки |
	| Библиотечные шаги находятся в каталоге | -require lib |
	| Автоматическая загрузка всех шагов как библиотечных из подкаталогов каталога фичи |  |
