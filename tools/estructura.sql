-- ==========================================
-- Esquema: adempiere
-- ==========================================
CREATE SCHEMA IF NOT EXISTS adempiere;

-- ==========================================
-- Tablas del módulo AD (seguridad)
-- ==========================================
CREATE TABLE IF NOT EXISTS adempiere.ad_user (
    ad_user_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    name varchar(60) NOT NULL,
    name2 varchar(60),
    description varchar(255),
    email varchar(120),
    value varchar(60),
    password varchar(255),
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_user_isactive_check CHECK (isactive IN ('Y','N'))
);

CREATE TABLE IF NOT EXISTS adempiere.ad_role (
    ad_role_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    name varchar(60) NOT NULL,
    description varchar(255),
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_role_isactive_check CHECK (isactive IN ('Y','N'))
);

CREATE TABLE IF NOT EXISTS adempiere.ad_user_roles (
    ad_user_roles_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    ad_role_id numeric(10,0) NOT NULL,
    ad_user_id numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_user_roles_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT fk_ad_user_roles_role FOREIGN KEY (ad_role_id) REFERENCES adempiere.ad_role(ad_role_id),
    CONSTRAINT fk_ad_user_roles_user FOREIGN KEY (ad_user_id) REFERENCES adempiere.ad_user(ad_user_id)
);

CREATE TABLE IF NOT EXISTS adempiere.ad_window_access (
    ad_window_access_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    ad_role_id numeric(10,0) NOT NULL,
    isreadwrite char(1) NOT NULL DEFAULT 'Y',
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_window_access_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT ad_window_access_isreadwrite_check CHECK (isreadwrite IN ('Y','N')),
    CONSTRAINT fk_ad_window_access_role FOREIGN KEY (ad_role_id) REFERENCES adempiere.ad_role(ad_role_id)
);

CREATE TABLE IF NOT EXISTS adempiere.ad_process_access (
    ad_process_access_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    ad_role_id numeric(10,0) NOT NULL,
    isreadwrite char(1) NOT NULL DEFAULT 'Y',
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_process_access_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT ad_process_access_isreadwrite_check CHECK (isreadwrite IN ('Y','N')),
    CONSTRAINT fk_ad_process_access_role FOREIGN KEY (ad_role_id) REFERENCES adempiere.ad_role(ad_role_id)
);

CREATE TABLE IF NOT EXISTS adempiere.ad_user_orgaccess (
    ad_user_orgaccess_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    ad_user_id numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    isreadonly char(1) NOT NULL DEFAULT 'N',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_user_orgaccess_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT ad_user_orgaccess_isreadonly_check CHECK (isreadonly IN ('Y','N')),
    CONSTRAINT fk_ad_user_orgaccess_user FOREIGN KEY (ad_user_id) REFERENCES adempiere.ad_user(ad_user_id)
);

-- ==========================================
-- Tablas PST (Departamentos, Empleados, etc.)
-- ==========================================
CREATE TABLE IF NOT EXISTS adempiere.pst_department (
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    name varchar(60),
    pst_department_id numeric(10,0) PRIMARY KEY,
    pst_limitassetsallowed numeric(10,0),
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    uuid varchar(36),
    value varchar(60),
    CONSTRAINT pst_department_isactive_check CHECK (isactive IN ('Y','N'))
);

CREATE TABLE IF NOT EXISTS adempiere.pst_employees (
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    name varchar(60),
    pst_employees_id numeric(10,0) PRIMARY KEY,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    uuid varchar(36),
    value varchar(60),
    taxid varchar(8),
    pst_assetasigned numeric,
    name2 varchar(60),
    isemployee char(1) DEFAULT 'Y',
    pst_department_id numeric(10,0),
    pst_nacionality varchar(22),
    gender char(1),
    pst_limitassetsallowed numeric(10,0),
    discord_identifier varchar(40),
    CONSTRAINT pst_employees_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT pst_employees_isemployee_check CHECK (isemployee IN ('Y','N')),
    CONSTRAINT fk_pst_employees_department FOREIGN KEY (pst_department_id)
        REFERENCES adempiere.pst_department(pst_department_id)
);

-- ==========================================
-- Tablas de Productos / Activos
-- ==========================================
CREATE TABLE IF NOT EXISTS adempiere.m_product_class (
    m_product_class_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    created timestamp NOT NULL,
    createdby numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    name varchar(60) NOT NULL,
    description varchar(60) NOT NULL,
    updated timestamp NOT NULL,
    updatedby numeric(10,0) NOT NULL,
    value varchar(255) NOT NULL,
    uuid varchar(36),
    CONSTRAINT m_product_class_value UNIQUE (ad_client_id, value),
    CONSTRAINT m_product_class_isactive_check CHECK (isactive IN ('Y','N'))
);

CREATE TABLE IF NOT EXISTS adempiere.c_bpartner (
    c_bpartner_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL,
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL,
    updatedby numeric(10,0) NOT NULL,
    uuid varchar(36),
    value varchar(40) NOT NULL,
    name varchar(255) NOT NULL,
    name2 varchar(255),
    address1 varchar(60),
    phone varchar(40),
    phone2 varchar(40),
    pst_rif varchar(9),
    pst_legalnature varchar(20)
);

CREATE TABLE IF NOT EXISTS adempiere.pst_location (
    pst_location_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    created timestamp NOT NULL,
    createdby numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    name varchar(60),
    updated timestamp NOT NULL,
    updatedby numeric(10,0) NOT NULL,
    uuid varchar(36),
    value varchar(60),
    CONSTRAINT pst_location_isactive_check CHECK (isactive IN ('Y','N'))
);

CREATE TABLE IF NOT EXISTS adempiere.m_product (
    m_product_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    uuid varchar(36),
    value varchar(510) NOT NULL,
    name varchar(255) NOT NULL,
    m_product_class_id numeric(10,0),
    c_uom_id numeric(10,0) NOT NULL,
    isstocked char(1) NOT NULL DEFAULT 'Y',
    pst_location_id numeric(10,0),
    CONSTRAINT fk_mproductclass FOREIGN KEY (m_product_class_id)
        REFERENCES adempiere.m_product_class (m_product_class_id),
    CONSTRAINT fk_pst_location FOREIGN KEY (pst_location_id)
        REFERENCES adempiere.pst_location (pst_location_id)
);

CREATE TABLE IF NOT EXISTS adempiere.a_asset (
    a_asset_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    uuid varchar(36),
    serno varchar(255),
    name varchar(60) NOT NULL,
    m_product_id numeric(10,0) NOT NULL,
    m_product_class_id numeric(10,0),
    pst_assetmodel_id numeric(10,0),
    pst_assetmark_id numeric(10,0),
    c_bpartner_id numeric(10,0),
    pst_location_id numeric(10,0),
    a_asset_status varchar(2) DEFAULT 'NW',
    a_asset_price numeric,
    CONSTRAINT fk_mproduct FOREIGN KEY (m_product_id) REFERENCES adempiere.m_product (m_product_id),
    CONSTRAINT fk_mproductclass FOREIGN KEY (m_product_class_id) REFERENCES adempiere.m_product_class (m_product_class_id),
    CONSTRAINT fk_cbpartner FOREIGN KEY (c_bpartner_id) REFERENCES adempiere.c_bpartner (c_bpartner_id),
    CONSTRAINT fk_pstlocation FOREIGN KEY (pst_location_id) REFERENCES adempiere.pst_location (pst_location_id)
);

CREATE TABLE IF NOT EXISTS adempiere.a_asset_delivery (
    a_asset_delivery_id numeric(10,0) PRIMARY KEY,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    uuid varchar(36),
    a_asset_id numeric(10,0) NOT NULL,
    movementdate timestamp NOT NULL,
    description varchar(255),
    ad_user_id numeric(10,0),
    pst_employees_id numeric(10,0),
    a_asset_status varchar(20),
    pst_location_id numeric(10,0),
    m_locatorto_id numeric(10,0),
    isreubicate char(1) DEFAULT 'N',
    CONSTRAINT fk_aasset FOREIGN KEY (a_asset_id) REFERENCES adempiere.a_asset (a_asset_id),
    CONSTRAINT fk_aduser FOREIGN KEY (ad_user_id) REFERENCES adempiere.ad_user (ad_user_id),
    CONSTRAINT fk_pstlocation FOREIGN KEY (pst_location_id) REFERENCES adempiere.pst_location (pst_location_id)
);
