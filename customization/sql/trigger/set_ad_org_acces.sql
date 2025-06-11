-- Función que se ejecuta antes de insertar o actualizar un rol.
-- Establece el campo 'UserLevel' a 'CO' y realiza una inserción
-- en la tabla 'AD_Role_OrgAccess'.
CREATE OR REPLACE FUNCTION set_ad_org_acces()
RETURNS TRIGGER AS $$
BEGIN
    -- Asumiendo que NEW.AD_Role_ID es el ID del rol que se está insertando/actualizando.
    INSERT INTO AD_Role_OrgAccess (
        ad_role_id,
        ad_org_id,
        ad_client_id,
        isactive,
        created,
        createdby,
        updated,
        updatedby,
        isreadonly,
        uuid
    ) VALUES (
        NEW.AD_Role_ID,     -- ID del rol actual
        50006,              -- Valor fijo para AD_Org_ID
        11,                 -- Valor fijo para AD_Client_ID
        'Y',                -- Asumiendo 'Y' para activo
        NOW(),              -- Marca de tiempo de creación
        NEW.createdby,       -- Usuario que realiza la operación
        NOW(),              -- Marca de tiempo de actualización
        NEW.updatedby,       -- Usuario que realiza la operación
        'N',                -- Valor fijo para IsReadOnly
        getUuid()   -- Genera un UUID único (requiere extensión uuid-ossp si no está ya activa)
    );

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger que llama a la función 'update_role_userlevel_func'
-- antes de cada inserción o actualización en la tabla 'AD_Role'.
CREATE TRIGGER set_ad_org_acces
BEFORE INSERT
ON AD_Role  -- Asumiendo que 'AD_Role' es la tabla donde se guardan los roles
FOR EACH ROW
EXECUTE FUNCTION set_ad_org_acces();



