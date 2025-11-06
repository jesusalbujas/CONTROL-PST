-- ==========================================
-- Esquema: adempiere
-- ==========================================
CREATE SCHEMA IF NOT EXISTS adempiere;

-- ==========================================
-- Tabla: pst_department
-- ==========================================
CREATE TABLE IF NOT EXISTS adempiere.pst_department
(
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    name varchar(60),
    pst_department_id numeric(10,0) NOT NULL,
    pst_limitassetsallowed numeric(10,0),
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    uuid varchar(36),
    value varchar(60),
    CONSTRAINT pst_department_pkey PRIMARY KEY (pst_department_id),
    CONSTRAINT pst_department_isactive_check CHECK (isactive IN ('Y','N'))
);

-- ==========================================
-- Tabla: pst_employees
-- ==========================================
CREATE TABLE IF NOT EXISTS adempiere.pst_employees
(
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    name varchar(60),
    pst_employees_id numeric(10,0) NOT NULL,
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
    CONSTRAINT pst_employees_pkey PRIMARY KEY (pst_employees_id),
    CONSTRAINT pst_employees_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT pst_employees_isemployee_check CHECK (isemployee IN ('Y','N')),
    CONSTRAINT fk_pst_employees_department FOREIGN KEY (pst_department_id)
        REFERENCES adempiere.pst_department(pst_department_id)
);

-- ==========================================
-- Tabla: pst_typology
-- ==========================================
CREATE TABLE IF NOT EXISTS adempiere.pst_typology
(
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    name varchar(60),
    pst_typology_id numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    uuid varchar(36),
    value varchar(60),
    CONSTRAINT pst_typology_pkey PRIMARY KEY (pst_typology_id),
    CONSTRAINT pst_typology_isactive_check CHECK (isactive IN ('Y','N'))
);

-- ==========================================
-- Tabla: pst_topics
-- ==========================================
CREATE TABLE IF NOT EXISTS adempiere.pst_topics
(
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    name varchar(60),
    pst_topics_id numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    uuid varchar(36),
    value varchar(60),
    CONSTRAINT pst_topics_pkey PRIMARY KEY (pst_topics_id),
    CONSTRAINT pst_topics_isactive_check CHECK (isactive IN ('Y','N'))
);

-- ==========================================
-- Tabla: pst_thread
-- ==========================================
CREATE TABLE IF NOT EXISTS adempiere.pst_thread
(
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    clientvalue varchar(40),
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    datefinish timestamp,
    isactive char(1) NOT NULL DEFAULT 'Y',
    processed char(1) DEFAULT 'N',
    pst_applicantname varchar(255),
    pst_clientname varchar(40),
    pst_qtymin numeric(10,0),
    pst_thread_id numeric(10,0) NOT NULL,
    pst_thread_status varchar(60),
    pst_topics_id numeric(10,0),
    pst_typology_id numeric(10,0),
    qty numeric(10,0),
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    url varchar(120),
    uuid varchar(36),
    value varchar(60),
    name varchar(60),
    description varchar(255),
    pst_employees_id numeric(10,0),
    pst_closedbyname varchar(60),
    pst_createdbyname varchar(60),
    pst_updatedbyname varchar(60),
    CONSTRAINT pst_thread_pkey PRIMARY KEY (pst_thread_id),
    CONSTRAINT pst_thread_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT pst_thread_processed_check CHECK (processed IN ('Y','N')),
    CONSTRAINT fk_pst_thread_topics FOREIGN KEY (pst_topics_id)
        REFERENCES adempiere.pst_topics(pst_topics_id)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_pst_thread_typology FOREIGN KEY (pst_typology_id)
        REFERENCES adempiere.pst_typology(pst_typology_id)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_pst_thread_employees FOREIGN KEY (pst_employees_id)
        REFERENCES adempiere.pst_employees(pst_employees_id)
        ON UPDATE CASCADE ON DELETE SET NULL
);

-- ==========================================
-- Tablas del módulo AD (seguridad)
-- ==========================================
CREATE TABLE IF NOT EXISTS adempiere.ad_user
(
    ad_user_id numeric(10,0) NOT NULL,
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
    CONSTRAINT ad_user_pkey PRIMARY KEY (ad_user_id),
    CONSTRAINT ad_user_isactive_check CHECK (isactive IN ('Y','N'))
);

CREATE TABLE IF NOT EXISTS adempiere.ad_role
(
    ad_role_id numeric(10,0) NOT NULL,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    name varchar(60) NOT NULL,
    description varchar(255),
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_role_pkey PRIMARY KEY (ad_role_id),
    CONSTRAINT ad_role_isactive_check CHECK (isactive IN ('Y','N'))
);

CREATE TABLE IF NOT EXISTS adempiere.ad_user_roles
(
    ad_user_roles_id numeric(10,0) NOT NULL,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    ad_role_id numeric(10,0) NOT NULL,
    ad_user_id numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_user_roles_pkey PRIMARY KEY (ad_user_roles_id),
    CONSTRAINT ad_user_roles_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT fk_ad_user_roles_role FOREIGN KEY (ad_role_id) REFERENCES adempiere.ad_role(ad_role_id),
    CONSTRAINT fk_ad_user_roles_user FOREIGN KEY (ad_user_id) REFERENCES adempiere.ad_user(ad_user_id)
);

CREATE TABLE IF NOT EXISTS adempiere.ad_window_access
(
    ad_window_access_id numeric(10,0) NOT NULL,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    ad_role_id numeric(10,0) NOT NULL,
    isreadwrite char(1) NOT NULL DEFAULT 'Y',
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_window_access_pkey PRIMARY KEY (ad_window_access_id),
    CONSTRAINT ad_window_access_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT ad_window_access_isreadwrite_check CHECK (isreadwrite IN ('Y','N')),
    CONSTRAINT fk_ad_window_access_role FOREIGN KEY (ad_role_id) REFERENCES adempiere.ad_role(ad_role_id)
);

CREATE TABLE IF NOT EXISTS adempiere.ad_process_access
(
    ad_process_access_id numeric(10,0) NOT NULL,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    ad_role_id numeric(10,0) NOT NULL,
    isreadwrite char(1) NOT NULL DEFAULT 'Y',
    isactive char(1) NOT NULL DEFAULT 'Y',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_process_access_pkey PRIMARY KEY (ad_process_access_id),
    CONSTRAINT ad_process_access_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT ad_process_access_isreadwrite_check CHECK (isreadwrite IN ('Y','N')),
    CONSTRAINT fk_ad_process_access_role FOREIGN KEY (ad_role_id) REFERENCES adempiere.ad_role(ad_role_id)
);

CREATE TABLE IF NOT EXISTS adempiere.ad_user_orgaccess
(
    ad_user_orgaccess_id numeric(10,0) NOT NULL,
    ad_client_id numeric(10,0) NOT NULL,
    ad_org_id numeric(10,0) NOT NULL,
    ad_user_id numeric(10,0) NOT NULL,
    isactive char(1) NOT NULL DEFAULT 'Y',
    isreadonly char(1) NOT NULL DEFAULT 'N',
    created timestamp NOT NULL DEFAULT now(),
    createdby numeric(10,0) NOT NULL,
    updated timestamp NOT NULL DEFAULT now(),
    updatedby numeric(10,0) NOT NULL,
    CONSTRAINT ad_user_orgaccess_pkey PRIMARY KEY (ad_user_orgaccess_id),
    CONSTRAINT ad_user_orgaccess_isactive_check CHECK (isactive IN ('Y','N')),
    CONSTRAINT ad_user_orgaccess_isreadonly_check CHECK (isreadonly IN ('Y','N')),
    CONSTRAINT fk_ad_user_orgaccess_user FOREIGN KEY (ad_user_id) REFERENCES adempiere.ad_user(ad_user_id)
);

-- 🔹 Auditoría
ALTER TABLE adempiere.pst_thread
  ADD CONSTRAINT fk_pst_thread_createdby FOREIGN KEY (createdby)
  REFERENCES adempiere.ad_user(ad_user_id) ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE adempiere.pst_thread
  ADD CONSTRAINT fk_pst_thread_updatedby FOREIGN KEY (updatedby)
  REFERENCES adempiere.ad_user(ad_user_id) ON UPDATE CASCADE ON DELETE RESTRICT;
