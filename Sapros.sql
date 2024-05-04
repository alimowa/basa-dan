SELECT
	`discipl`.`pnamedisc` as 'Полное наименование дисциплины'
FROM
	`discipl`;
SELECT DISTINCT
	`groups`.`napr` as 'Направление подготовки'
FROM
	`groups`;
    SELECT
	*
FROM
	`discipl` where `discipl`.`knamedisc`= 'ЭП';
SELECT
	*
FROM  
	`discipl`
WHERE
	`iddiscipl` <> 5;
SELECT	
	`name`, `dob`
FROM 
	`students`
WHERE
	NOT (`idgroups` <> 2 OR dob < '2000-11-15');
/*
Выводим тех студентов, у которых дата рождения позже 15.11.2000
и которые при этом учатся в группе с idgroup = 2.
*/
SELECT
`name`, `dob`, `docum`
FROM
`students`
WHERE
((`idgroups` = 2 OR `idgroups` = 5)
AND `docum` = 0);
/*Выводим имя, дату рождения и документ из таблицы студентов если айди группы 2 или 5, документы при этом отсутвуют/*

