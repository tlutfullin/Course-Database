SELECT *FROM tasks;

SELECT *FROM parameteres;

SELECT *FROM model;
SELECT *FROM documentation;

-- выведем модели, которые решают задачу регрессии, а также тип обучения, 
SELECT 	model.name_model, model.learning, tasks.name_tasks
FROM model
	INNER JOIN tasks ON model.id_tasks =  tasks.id_tasks
WHERE tasks.name_tasks = 'Regression';