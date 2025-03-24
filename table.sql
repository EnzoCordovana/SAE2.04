PROMPT "Suppression des données";

DROP TABLE IF EXISTS PROPRIO CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS ESPACE CASCADE CONSTRAINTS;
DROP TABLE IF EXISTS BIEN CASCADE CONSTRAINTS;

PROMPT "Création des relations";

CREATE TABLE PROPRIO(
    -- Attributes
    IdP NUMBER(6,0),
    Nom VARCHAR2(20) NOT NULL,
    Prenom VARCHAR2(15) NOT NULL,
    -- Contraints
    CONSTRAINT pk_Proprio PRIMARY KEY (IdP),
    CONSTRAINT uk_Proprio UNIQUE (Nom, Prenom)
);

CREATE TABLE BIEN(
    -- attributes
    IdEBien NUMBER(6,0),
    Categorie VARCHAR2(15) NOT NULL,
    Type VARCHAR2(15) NOT NULL,
    IdP NUMBER(6,0) NOT NULL,
    Ville VARCHAR2(30) NOT NULL,
    Prix NUMBER(9, 2) NOT NULL,
    -- Contrains
    CONSTRAINT ch_Categorie CHECK (Categorie IN ('Appartement', 'Maison de ville', 'Villa')),
    CONSTRAINT ch_Type CHECK (Type IN ('Studio', 'T2', 'T3', 'T4', 'T5')),
    CONSTRAINT pk_Bien PRIMARY KEY (IdEBien),
    CONSTRAINT fk_Proprio FOREIGN KEY (IdP) REFERENCES PROPRIO(IdP)
);

CREATE TABLE ESPACE (
    -- attributes
    IdE NUMBER(6, 0),
    Designation VARCHAR2(20) NOT NULL,
    Superficie NUMBER(6, 0) NOT NULL,
    IdeRattach NUMBER(6, 0),
    -- Contrains
    CONSTRAINT pk_ESPACE PRIMARY KEY (IdE)
);

ALTER TABLE ESPACE
ADD CONSTRAINT fk_Espace_Bien FOREIGN KEY (IdeRattach) REFERENCES BIEN(IdEBien);