### Tanks

[![Tests](https://github.com/kirimi/otus_tanks/actions/workflows/tests.yml/badge.svg)](https://github.com/kirimi/otus_tanks/actions/workflows/tests.yml)

## Домашнее задание  
### Движение игровых объектов по полю.

Цель: Выработка навыка применения SOLID принципов на примере игр
"Танки".

В результате выполнения ДЗ будет получен код, отвечающий за движение объектов по игровому полю, устойчивый к появлению новых игровых объектов и дополнительных ограничений, накладываемых на это движение.

Описание игры по ссылке https://docs.google.com/document/d/19QXXaUEAIMkYsZZceSCkZ8jkkryMPpqJUotwV3GGIgQ/edit?usp=sharing

Реализовать движение объектов на игровом поле в рамках подсистемы Игровой сервер.

Критерии оценки:
За выполнение каждого пункта, перечисленного ниже начисляются баллы:

- ДЗ сдано на проверку - 2 балла
- Код решения опубликован на github/gitlab - 1 балл
- Настроен CI - 5 баллов
- Код компилируется без ошибок - 1 балл.
- Все тесты успешно выполняются - 1 балл

Прямолинейное равномерное движение без деформации. 
- Само движение реализовано в виде отдельного класса - 1 балл.
- Для движущихся объектов определен интерфейс, устойчивый к появлению новых видов движущихся объектов - 1 балл
- Реализован тест: Для объекта, находящегося в точке (12, 5) и движущегося со скоростью (-7, 3) движение меняет положение объекта на (5, 8) - 1 балл
- Реализован тест: Попытка сдвинуть объект, у которого невозможно прочитать положение в пространстве, приводит к ошибке - 1 балл
- Реализован тест: Попытка сдвинуть объект, у которого невозможно прочитать значение мгновенной скорости, приводит к ошибке - 1балл
- Реализован тест: Попытка сдвинуть объект, у которого невозможно изменить положение в пространстве, приводит к ошибке - 1 балл

Поворот объекта вокруг оси.
- Сам поворот реализован в виде отдельного класса - 1 балл
- Для поворачивающегося объекта определен интерфейс, устойчивый к появлению новых видов движущихся объектов - 1 балл
- Реализован тесты - 4 балла (по одному баллу за тест, но не более 4-х баллов).
