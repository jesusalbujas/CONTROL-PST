CREATE OR REPLACE FUNCTION set_ASP_Level_Access()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO ASP_Level_Access (
        ad_role_id,
        ad_org_id,
        ad_client_id,
        isactive,
        created,
        createdby,
        updated,
        updatedby,
        uuid,
        ASP_Level_ID
    ) VALUES (
        NEW.AD_Role_ID,     -- ID del rol actual
        50006,              -- Valor fijo para AD_Org_ID
        11,                 -- Valor fijo para AD_Client_ID
        'Y',                -- Asumiendo 'Y' para activo
        NOW(),              -- Marca de tiempo de creación
        NEW.createdby,       -- Usuario que realiza la operación
        NOW(),              -- Marca de tiempo de actualización
        NEW.updatedby,       -- Usuario que realiza la operación
        getUuid(),   -- Genera un UUID único (requiere extensión uuid-ossp si no está ya activa)
        1000000
    );

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_ASP_Level_Access
BEFORE INSERT
ON AD_Role  -- Asumiendo que 'AD_Role' es la tabla donde se guardan los roles
FOR EACH ROW
EXECUTE FUNCTION set_ASP_Level_Access();



