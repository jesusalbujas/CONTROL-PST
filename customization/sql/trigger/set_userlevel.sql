CREATE OR REPLACE FUNCTION update_role_userlevel_func()
RETURNS TRIGGER AS $$
BEGIN
    NEW.UserLevel := 'CO';

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_role_userlevel_on_save
BEFORE INSERT
ON AD_Role
FOR EACH ROW
EXECUTE FUNCTION update_role_userlevel_func();