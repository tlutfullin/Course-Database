-- Создаем базу данных модели машинного обучения
CREATE SCHEMA IF NOT EXISTS  model_ml DEFAULT CHARACTER SET utf8 ;

-- Использования БД model_ml для последующих команд
USE model_ml;

-- Создания таблицы tasks
CREATE TABLE IF NOT EXISTS tasks(
	id_tasks INT ,
    name_tasks VARCHAR(200) NOT NULL,
    descriptions BLOB(500),
    application BLOB(250),
    CONSTRAINT pk_tasks PRIMARY KEY(id_tasks)
);

-- Создания таблицы parameteres
CREATE TABLE IF NOT EXISTS parameteres(
	id_model INT AUTO_INCREMENT ,
	amount_param INT,
	name_param BLOB(500),
	optimal_param BLOB(250),
    CONSTRAINT pk_param PRIMARY KEY(id_model)
);

-- Создания таблицы documentation
CREATE TABLE IF NOT EXISTS documentation (
	id_document INT,
    name_library VARCHAR(150),
    url VARCHAR(200),
    end_version VARCHAR(200),
    CONSTRAINT pk_document PRIMARY KEY(id_document)
);

-- создания основной таблицы model
CREATE TABLE IF NOT EXISTS model(
	id_model INT AUTO_INCREMENT,
    name_model VARCHAR(300),
    id_tasks INT,
    types_tasks INT,
    application  INT,
    amount_parameter INT,
    complexity_algorithm VARCHAR(45),
    learning VARCHAR(20),
    id_document INT,
    
    -- установка внешних ключей
    CONSTRAINT FK_param FOREIGN  KEY (id_model) REFERENCES parameteres (id_model) ,
    CONSTRAINT FK_tasks FOREIGN  KEY (id_tasks) REFERENCES tasks (id_tasks) ,
    CONSTRAINT FK_document FOREIGN KEY (id_document) REFERENCES documentation (id_document) 
);



