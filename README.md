# 1BDD для OneScript

1bdd - инструмент для выполнения автоматизированных требований/тестов, написанных на обычном, не программном языке.

Иными словами, это консольный фреймворк, реализующий BDD для проекта [OneScript](https://github.com/EvilBeaver/OneScript).

Идеи черпаются из проекта [Cucumber](https://cucumber.io).

[![Join the chat at https://gitter.im/artbear/1bdd](https://badges.gitter.im/artbear/1bdd.svg)](https://gitter.im/artbear/1bdd?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)  Здесь вы можете задавать любые вопросы разработчикам и активным участникам.

# Командная строка запуска

```
oscript bdd.os <features-path> [ключи]
oscript bdd.os <команда> <параметры команды> [ключи]

Возможные команды:
	<features-path> [ключи]
		Выполняет сценарии BDD для Gherkin-спецификаций
		Параметры:
			features-path - путь к файлам *.feature. Можно указывать как каталоги, так и конкретные файлы.

	exec <features-path> [ключи]
		Выполняет сценарии BDD для Gherkin-спецификаций
		Параметры:
			features-path - путь к файлам *.feature. Можно указывать как каталоги, так и конкретные файлы.

	generate <features-path> [ключи]
		Создает заготовки шагов для указанных Gherkin-спецификаций

Возможные общие ключи:
	-out <путь лог-файла>
	-debug <on|off> - включает режим отладки (полный лог + остаются временные файлы)
	-verbose <on|off> - включается полный лог
```

Для подсказки по конкретной команде наберите
`bdd help <команда>`.
