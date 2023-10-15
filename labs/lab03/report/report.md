---
## Front matter
title: "Отчет по лабораторной работе №3"
subtitle: "Дисциплина: Архитектура компьютеров и операционные системы"
author: "Губайдуллина Софья Романовна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.

# Задание

1) Установка TexLive и Pandoc;
2) Отчет в Markdown по лабораторной работе №4;
3) Выполнение заданий для самостоятельной работы

# Теоретическое введение

   Чтобы создать заголовок, используется знак #, чтобы задать для текста полужирное начертание, его заключают в двойные звездочки, а для того, чтобы задать для текста полужирное и курсивное начертание, - в тройные.
   
   Синтаксис Markdown для встроенной ссылки состоит из части [link text], представляю-
щей текст гиперссылки, и части (file-name.md) – URL-адреса или имени файла, на который
дается ссылка. В Markdown вставить изображение в документ можно с помощью непосредственного
указания адреса изображения, где:
• в квадратных скобках указывается подпись к изображению;
• в круглых скобках указывается URL-адрес или относительный путь изображения, а так-
же (необязательно) всплывающую подсказку, заключённую в двойные или одиночные
кавычки.
• в фигурных скобках указывается идентификатор изображения (#fig:fig1) для ссылки
на него по тексту и размер изображения относительно ширины страницы (width=90%)
Ссылка на изображение (рис. 3.1) может быть оформлена следующим образом (рис. [-
@fig:fig1])

Преобразовать файл README.md можно следующим образом:
pandoc README.md -o README.pdf
либо:
pandoc README.md -o README.docx

# Выполнение лабораторной работы

1) С официального сайта установливаю пакет TexLive, вводя определенный набор команд в Terminal (рис.@fig:001) (рис.@fig:002) 

![Установка TexLive](file:///home/srgubayjdullina/Pictures/Screenshots/Screenshot%20from%202023-10-15%2013-51-07.png){#fig:001 width 90%}

![Установка TexLive](file:///home/srgubayjdullina/Pictures/Screenshots/Screenshot%20from%202023-10-15%2013-53-00.png){#fig:002 width=90%}

Также мне необходимо установить Pandoc для дальнейшей компиляции файлов. С помощью утилиты tar -xf распаковываю установленный пакет Pandoc (рис.@fig:003)

![Установка и распаковка Pandoc](file:///home/srgubayjdullina/Pictures/Screenshots/Screenshot%20from%202023-10-15%2014-05-16.png){#fig:003 width=90%}

Далее перехожу в каталог курса, который был сформирован ранее при выполнении лабораторной работы №2, обновляю локальный репозиторий, после чего перехожу в каталог с шаблоном отчета по лабораторной работе № 3. Провожу проверку компиляции шаблона при помощи Makefile, предварительно установив команду make, после чего удаляю (рис.@fig:004) (рис.@fig:005).

![Обновление репозитория и проверка компиляции](file:///home/srgubayjdullina/Pictures/Screenshots/Screenshot from 2023-10-15 14-07-42.png){#fig:004 width=90%}

![Компиляция с использованием make, makeclean](file:///home/srgubayjdullina/Pictures/Screenshots/Screenshot%20from%202023-10-15%2014-09-09.png){#fig:005 width=90%}

При помощи gedit открываю файл для отчета по лабораторной работе report.md и заполняю (рис.@fig:006)

![Заполнение отчета в Markdown](file:///home/srgubayjdullina/Pictures/Screenshots/Screenshot%20from%202023-10-15%2015-24-15.png){#fig:006 width=90%}

В завершении загружаю файлы на GitHub (рис.@fig:006) (рис.fig:007).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:001 width=70%}

# Выводы

Здесь кратко описываются итоги проделанной работы.

# Список литературы{.unnumbered}

::: {#refs}
:::
