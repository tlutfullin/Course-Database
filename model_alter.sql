-- модификация таблицы model
-- удаления авто инкремента у атрибута id_documnet
ALTER TABLE model
MODIFY id_document INT;

-- модификация таблицы model
-- добавления ограничения на внешний ключ Pk_parameteres -- автоинкрмента 
ALTER TABLE model
DROP CONSTRAINT Fk_param;

ALTER TABLE model 
ADD CONSTRAINT Fk_param
	FOREIGN KEY(id_model)
    REFERENCES parameteres(id_model) 
    ON DELETE CASCADE;


-- модификация таблицы model
-- измненения типа данных
ALTER TABLE model 
MODIFY types_tasks VARCHAR(200);

ALTER TABLE model 
MODIFY  application VARCHAR(200);