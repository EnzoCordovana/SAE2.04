PROMPT "Suppression des données";

DROP TABLE IF EXISTS PROPRIO CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS ESPACE CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS BIEN CASCADE CONSTRAINTS;

PROMPT "Création des relations";

CREATE TABLE PROPRIO(
    -- Attributes
    IdP NUMBER(6,0),
    Nom VARCHAR2(20),
    Prenom VARCHAR2(15),
    -- Contraints
    CONSTRAINT pk_Proprio PRIMARY KEY (IdP),
    CONSTRAINT uk_Proprio UNIQUE (Nom, Prenom)
);

CREATE TABLE ESPACE(
    -- Attributes
    IdE NUMBER(6,0),
    Designation VARCHAR2(20),
    Superficie NUMBER(10,2),
    IdERattach NUMBER(6,0),
    -- Contrains
    CONSTRAINT pk_IdE PRIMARY KEY (IdE),
    CONSTRAINT fk_Espace FOREIGN KEY (IdERattach) REFERENCES BIEN(IdEBien)
);

CREATE TABLE BIEN(
    -- attributes
    IdEBien NUMBER(6,0),
    Categorie VARCHAR2(15),
    Type VARCHAR2(15),
    IdP NUMBER(6,0),
    Ville VARCHAR2(30),
    Prix NUMBER(9, 2),
    -- Contrains
    CONSTRAINT ch_Categorie CHECK (Categorie IN ('Appartement', 'Maison de ville', 'Villa')),
    CONSTRAINT ch_Type CHECK (Type IN ('Studio', 'T2', 'T3', 'T4', 'T5')),
    CONSTRAINT pk_Bien PRIMARY KEY (IdEBien),
    CONSTRAINT fk_Proprio FOREIGN KEY (IdP) REFERENCES PROPRIO(IdP),
    -- CONSTRAINT fk_Bien_Espace FOREIGN KEY (IdEBien) REFERENCES ESPACE(IdE)
);