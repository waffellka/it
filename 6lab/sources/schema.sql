
DROP SCHEMA IF EXISTS bin2002 CASCADE;

CREATE SCHEMA bin2002;



CREATE TABLE bin2002.subject (
	name TEXT,
	PRIMARY KEY (name)
);

CREATE TABLE bin2002.timetable (
	id SERIAL,
	day INTEGER,
	subject TEXT,
	room_numb TEXT,
	start_time TIME,
	is_even BOOLEAN,
	PRIMARY KEY (id),
	FOREIGN KEY (subject)
		REFERENCES bin2002.subject(name)
);

CREATE TABLE bin2002.teacher (
	id SERIAL,
	full_name TEXT,
	subject TEXT,
	PRIMARY KEY(id),
	FOREIGN KEY (subject)
		REFERENCES bin2002.subject(name)
);

INSERT INTO bin2002.subject(name)
VALUES
('Высшая математика пр.з.'),
('Ин. яз. пр.з.'),
('ТВиМС пр.з.'),
('ЭЛЕКТИВНЫЕ ДИСЦ. ПО ФИЗИЧЕСКОЙ КУЛЬТУРЕ'),
('Правоведение лек.'),
('Введение в ИТ Авиамоторная лек.'),
('Электроника Авиамоторная лек.'),
('Экология Авиамоторная лек.'),
('ТВиМС Авиамоторная лек.'),
('Вычислительная техника Авиамоторная лек.'),
('Высшая математика Авиамоторная лек.'),
('Экология лаб.'),
('Введение в ИТ лаб.'),
('Основы компьютерного анализа ЭЦ лаб.'),
('Электроника лаб.'),
('Вычислительная техника лаб.'),
('История развития средств связи Авиамоторная лек.'),
('История развития средств связи Авиамоторная пр.з'),
('Правоведение пр.з.');

INSERT INTO
    bin2002.timetable (day, subject, room_numb, start_time, is_even)
VALUES
    (0,'Высшая математика пр.з.',                           'ауд.224',  '9:30',  FALSE),
    (0,'Высшая математика пр.з.',                           'ауд.224',  '11:20', FALSE),
    (0,'Ин. яз. пр.з.',                                     'ауд.450',  '13:10', FALSE),
    (0,'ТВиМС пр.з.',                                       'ауд.224',  '15:25', FALSE),
    (0,'ЭЛЕКТИВНЫЕ ДИСЦ. ПО ФИЗИЧЕСКОЙ КУЛЬТУРЕ',           NULL,       '17:15', FALSE),
    (0,'Высшая математика пр.з.',                           'ауд.224',  '9:30',  TRUE),
    (0,'Высшая математика пр.з.',                           'ауд.224',  '11:20', TRUE),
    (0,'Ин. яз. пр.з.',                                     'ауд.450',  '13:10', TRUE),
    (0,'ТВиМС пр.з.',                                       'ауд.224',  '15:25', TRUE),
    (0,'ЭЛЕКТИВНЫЕ ДИСЦ. ПО ФИЗИЧЕСКОЙ КУЛЬТУРЕ',           NULL,       '17:15', TRUE),
    (1,'Правоведение лек.',                                 'УЛК-2',    '9:30',  FALSE),
    (1,'Введение в ИТ Авиамоторная лек.',                   'УЛК-2',    '11:20', FALSE),
    (1,'Электроника Авиамоторная лек.',                     'УЛК-2',    '13:10', FALSE),
    (1,'Экология Авиамоторная лек.',                        'УЛК-2',    '15:25', FALSE),
    (1,'ТВиМС Авиамоторная лек.',                           'УЛК-2',    '17:15', FALSE),
    (1,'Вычислительная техника лаб.',                       NULL,       '15:25', TRUE),
    (1,'Вычислительная техника лаб.',                       NULL,       '17:15', TRUE),
    (2,'Вычислительная техника Авиамоторная лек.',          'УЛК-2',    '13:10', FALSE),
    (2,'Высшая математика Авиамоторная лек.',               'УЛК-2',    '15:25', FALSE),
    (2,'История развития средств связи Авиамоторная лек.',  'УЛК-2',    '11:20', TRUE),
    (2,'История развития средств связи Авиамоторная пр.з',  'УЛК-2',    '13:10', TRUE),
    (2,'Высшая математика Авиамоторная лек.',               'УЛК-2',    '15:25', TRUE),
    (3,'Экология лаб.',                                     '339',      '11:20', FALSE),
    (3,'ЭЛЕКТИВНЫЕ ДИСЦ. ПО ФИЗИЧЕСКОЙ КУЛЬТУРЕ',           '220',      '13:10', FALSE),
    (3,'Введение в ИТ лаб.',                                'ауд. 224', '15:25', FALSE),
    (3,'Введение в ИТ лаб.',                                'ауд. 224', '17:15', FALSE),
    (3,'Правоведение пр.з.',                                'ауд.404',  '11:20', TRUE),
    (3,'ЭЛЕКТИВНЫЕ ДИСЦ. ПО ФИЗИЧЕСКОЙ КУЛЬТУРЕ',           '220',      '13:10', TRUE),
    (3,'Введение в ИТ лаб.',                                'ауд. 224', '15:25', TRUE),
    (3,'Введение в ИТ лаб.',                                'ауд. 224', '17:15', TRUE),
    (4,'Основы компьютерного анализа ЭЦ лаб.',              '425',      '13:10', FALSE),
    (4,'Электроника лаб.',                                  '525',      '15:25', FALSE),
    (4,'Основы компьютерного анализа ЭЦ лаб.',              '425',      '13:10', TRUE),
    (4,'Электроника лаб.',                                  '525',      '15:25', TRUE);

INSERT INTO
    bin2002.teacher(subject, full_name)
VALUES
    ('Высшая математика пр.з.',                             'Александров Ю.Л.'),
    ('Ин. яз. пр.з.',                                       'Кожевникова Т.В.'),
    ('ТВиМС пр.з.',                                         'Панков К.Н.'),
    ('ЭЛЕКТИВНЫЕ ДИСЦ. ПО ФИЗИЧЕСКОЙ КУЛЬТУРЕ',             'Пушкина А.А.'),
    ('Правоведение лек.',                                   'Антипов А.А.'),
    ('Введение в ИТ Авиамоторная лек.',                     NULL),
    ('Электроника Авиамоторная лек.',                       'Сретенская Н.В.'),
    ('Экология Авиамоторная лек.',                          'Ерофеева В.В.'),
    ('ТВиМС Авиамоторная лек.',                             'Панков К.Н.'),
    ('Вычислительная техника Авиамоторная лек.',            'Селезнев В.С.'),
    ('Высшая математика Авиамоторная лек.',                 'Александров Ю.Л.'),
    ('Экология лаб.',                                       'Тришкин В.Г.'),
    ('Введение в ИТ лаб.',                                  'Аршинов Е.А.'),
    ('Основы компьютерного анализа ЭЦ лаб.',                'Степанова А.Г.'),
    ('Электроника лаб.',                                    'Елизаров А.А. / Каравашкина В.Н.'),
    ('Вычислительная техника лаб.',                         'Селезнев В.С.'),
    ('История развития средств связи Авиамоторная лек.',    'Калабекьянц Н.Э.'),
    ('История развития средств связи Авиамоторная пр.з',    'Калабекьянц Н.Э.'),
    ('Правоведение пр.з.',                                  'Антипов А.А.');

/* Получаем расписание */
/*
SELECT timetable.*, teacher.full_name
FROM timetable timetable
LEFT JOIN teacher teacher
ON teacher.subject = timetable.subject
WHERE day = 0 AND is_even = FALSE
ORDER BY start_time
*/