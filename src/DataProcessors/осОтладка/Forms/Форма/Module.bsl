
&НаКлиенте
Процедура ГенерироватьСообщения(Команда)
	
	ГенерироватьСообщенияНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура ГенерироватьСообщенияНаСервере()
		
Итератор = 0;

ПараметрыЗадания = Новый Массив;
ПараметрыЗадания.Добавить(ОчередьГенерации);
ПараметрыЗадания.Добавить(КоличествоСообщенийГенерации);

	Пока Итератор < КоличествоПотоковГенерации Цикл
		ФоновыеЗадания.Выполнить("осОтладкаСервер.Генерировать",ПараметрыЗадания,Строка(Новый УникальныйИдентификатор));
		Итератор = Итератор + 1;
	КонецЦикла;

КонецПроцедуры

&НаКлиенте
Процедура ОбработатьОчереди(Команда)
	
	ОбработатьОчередиНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура ОбработатьОчередиНаСервере()
	
	осОчередиСообщенийСервер.ОбработатьОчередиСообщений();
	
КонецПроцедуры
