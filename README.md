### О программе
Данная программа представляет из себя небольшой магазин, в котором реализован функционал покупки и функционал считывания товаров из файлов (возможно добавление продукции).

Программа написана на языке Ruby версия 2.6.3, с использованием ООП: реализован суперкласс и 5 субклассов.

Функционал покупки: пользователю предлагается выбрать несколько товаров, учитывая количество и остаток товаров, а в итоге программа напишет ему, сколько с него денег.

Функционал считывания товаров: в папке `data` находятся три категории товаров: книги, диски и фильмы. В каждой категории лежат текстовые файлы в формате `.txt`.

### Как запускать
Программа запускается в терминале командой `ruby main.rb`

### Как добавлять продукцию

В соответствующую категорию нужно добавить текстовый файл с названием в виде порядкового номера и соответствующим содержанием для каждой категории:
- для фильмов
```
Название фильма
Фамилия и имя режиссера
Год выхода
Цена
Остаток
```

- для книг
```
Название книги
Жанр
Фамилия и имя автора
Цена
Остаток
```

- для дисков
```
Название альбома
Исполнитель
Жанр
Год выхода
Цена
Остаток
```
