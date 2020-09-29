# PryanikyTest

Тестовое задание от “Технологии защиты, ООО”.

В качестве тестового задания предлагается сделать небольшое приложение с использованием архитектуры MVP, позволяющее:
 - получать с сервера JSON файл со списком данных для отображения на странице нескольких типов (Ex: Картинка, Текст, Селектор одного варианта из N), а также массив со списком, какие блоки надо отобразить. (Ex: https://pryaniky.com/static/json/sample.json (data - данные, view: массив с последовательностью отображения)).
- отображать список этих элементов и при клике на них или выборе одного из вариантов ответа выводить информацию что за объект инициировал событие (id, имя, например).

В результате проделанной работы, как и было задано, соблюдаются все принципы архитектуры MVP. Приложение имеет два экрана, где первый экран отвечает за отображение списка элементов, а второй - выводит более подробную информацию при нажатии на элемент первого экрана. В проекте используются только одна библиотека UIKit. Верстка экранов происходит через XIB. Переход между контроллерами осуществляется с navigation controller. Для парсинга данных JSON используется протокол Decodable. На выполнение работы ушло примерно 4-6 часов, поскольку это был мой первый опыт использования MVP на практике (до этого был знаком только с теорией).