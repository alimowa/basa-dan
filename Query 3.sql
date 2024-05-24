/* Простое форматирование результатов запроса */
SELECT `groups`.`gr` as 'Группа', 'Обучается по направлению', `groups`.`shifr_napr` as 'Шифр направления', `groups`.`napr` as 'Наимменование направления'
FROM `groups`;
/* Использование вычислений в формулировке запроса */
SELECT
	knamedisc as 'Дисциплина', 'читается', hours as 'часов', hours/36 as 'Зачётных единиц'
FROM
	`discipl`;
/* Операции с датами */    
SELECT
	`name` as 'ФИО студента', round((curdate() - `dob`)/365/24) as 'Возраст'
FROM
	students;
/* Использование диапазона дат при помощи выражения INTERVAL */
SELECT
	*
FROM
	students
WHERE
    dob > "1999-12-31" 
		AND dob < "1999-12-31" + INTERVAL '1' YEAR;
        
SELECT
	*
FROM
	students
WHERE
    dob > '1999-12-31'
		AND dob < '1999-12-31' + INTERVAL '10' MONTH;
        
SELECT
	*
FROM
	students
WHERE
    dob > '1999-12-31' 
		AND dob < '2000-12-31';
        
SELECT DATE('2001-01-01') - INTERVAL '1' MONTH;
/* Выражение в предложении select, меняющее дату в результате отбора */
SELECT
	dob + INTERVAL '1' MONTH
FROM
	students
WHERE
	dob > '1999-12-31';
/* Заспрос с непонятным результатом */
SELECT
	*
FROM
	students
WHERE
    dob < DATE('1999-12-31') + (DATE('2000-12-01') - DATE('2001-01-01'));


