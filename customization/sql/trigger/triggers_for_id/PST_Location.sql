CREATE OR REPLACE FUNCTION update_value_with_PST_Location_id()
RETURNS trigger
LANGUAGE 'plpgsql'
COST 100
VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
    NEW.Value := NEW.PST_Location_ID::text;
    RETURN NEW;
END;
$BODY$;

--- Asignamos el trigger a la tabla
CREATE TRIGGER trg_update_value_with_PST_Location_id
BEFORE INSERT ON PST_Location
FOR EACH ROW
EXECUTE FUNCTION update_value_with_PST_Location_id();
