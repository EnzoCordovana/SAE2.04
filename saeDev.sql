-- Suppression des données

PROMPT = "Suppression des tables";

DROP TABLE BIEN CASCADE CONSTRAINTS;
DROP TABLE ESPACE CASCADE CONSTRAINTS;
DROP TABLE PROPRIO CASCADE CONSTRAINTS;

PROMPT "Suppression de toutes les autres éventuelles vues";

BEGIN
   FOR v IN (SELECT view_name FROM user_views) 
   LOOP
      EXECUTE IMMEDIATE 'DROP VIEW "' || v.view_name || '"';
   END LOOP;
END;
/

PROMPT "Définition des données";

CREATE TABLE PROPRIO(
    IdP NUMBER(6,0),
    Nom VARCHAR2(20) NOT NULL,
    Prenom VARCHAR2(15) NOT NULL,
    CONSTRAINT pk_Proprio PRIMARY KEY (IdP),
    CONSTRAINT uk_Proprio UNIQUE (Nom, Prenom)
);

CREATE TABLE ESPACE (
    IdE NUMBER(6, 0),
    Designation VARCHAR2(20) NOT NULL,
    Superficie NUMBER(6, 2) NOT NULL,
    IdERattach NUMBER(6, 0),
    CONSTRAINT pk_Espace PRIMARY KEY (IdE),
    CONSTRAINT fk_IdERattach FOREIGN KEY (IdERattach) REFERENCES ESPACE(IdE)
);

CREATE TABLE BIEN(
    IdEBien NUMBER(6,0),
    Categorie VARCHAR2(20) NOT NULL,
    Type VARCHAR2(15) NOT NULL,
    IdP NUMBER(6,0) NOT NULL,
    Ville VARCHAR2(30) NOT NULL,
    Prix NUMBER(9, 2) NOT NULL,
    CONSTRAINT ch_Categorie CHECK (Categorie IN ('Appartement', 'Maison de ville', 'Maison de campagne', 'Villa')),
    CONSTRAINT ch_Type CHECK (Type IN ('Studio', 'T2', 'T3', 'T4', 'T5', 'T6 et plus')),
    CONSTRAINT pk_Bien_primaire PRIMARY KEY (IdEBien),
    CONSTRAINT fk_Proprio FOREIGN KEY (IdP) REFERENCES PROPRIO(IdP),
    CONSTRAINT fk_Bien_secondaire FOREIGN KEY (IdEBien) REFERENCES ESPACE(IdE)
);

PROMPT "Insertions des données";

PROMPT "Insertions des données de la table PROPRIO";

INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (240, 'Cordovana', 'Enzo');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (220, 'Cordovana', 'Yann');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (10, 'Cordovana', 'Lucas');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (30, 'Candillier', 'Tristan');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (40, 'PANAIVA', 'Jeremy');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (105, 'Atherly', 'Evan');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (106, 'Palot', 'Thomas');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (160, 'Jouini', 'Rim');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (170, 'Yahi', 'Safa');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (180, 'Gouillon', 'Nicolas');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (190, 'Makssoud', 'Christine');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (90, 'Casali', 'Alain');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (70, 'Gerard', 'Olivier');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (80, 'Anni', 'Samuele');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (130, 'Morancey', 'Morgan');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (140, 'Salou', 'Alexandra');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (110, 'Pailloux', 'Steven');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (100, 'Soriat', 'Jade');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (120, 'Soriat', 'Eve');
INSERT INTO PROPRIO (IdP, Nom, Prenom) VALUES (150, 'Poiron', 'Ugo');

INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (900, 'Superficie', 50, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (901, 'Salon Cuisine', 22, 900);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (902, 'Chambre', 10.5, 900);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (903, 'Chambre', 8.5, 900);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (904, 'Salle de bain', 2.5, 900);

-- Studio
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1000, 'Superficie', 30, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1001, 'Pièce principale', 25, 1000);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1002, 'Salle de bain', 3, 1000);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1003, 'Cuisine', 2, 1000);

-- T1
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1100, 'Superficie', 35, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1101, 'Pièce principale', 28, 1100);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1102, 'Salle de bain', 3, 1100);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1103, 'Cuisine', 4, 1100);

-- T2
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1200, 'Superficie', 50, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1201, 'Salon Cuisine', 22, 1200);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1202, 'Chambre', 15, 1200);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1203, 'Salle de bain', 8, 1200);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1204, 'Entrée', 5, 1200);

-- T3
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1300, 'Superficie', 70, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1301, 'Salon Cuisine', 25, 1300);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1302, 'Chambre 1', 15, 1300);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1303, 'Chambre 2', 12, 1300);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1304, 'Salle de bain', 10, 1300);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1305, 'Entrée', 8, 1300);

-- T4
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1400, 'Superficie', 90, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1401, 'Salon Cuisine', 30, 1400);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1402, 'Chambre 1', 18, 1400);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1403, 'Chambre 2', 15, 1400);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1404, 'Chambre 3', 12, 1400);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1405, 'Salle de bain', 10, 1400);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1406, 'Entrée', 5, 1400);

-- T5
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1500, 'Superficie', 110, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1501, 'Salon Cuisine', 35, 1500);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1502, 'Chambre 1', 18, 1500);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1503, 'Chambre 2', 16, 1500);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1504, 'Chambre 3', 15, 1500);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1505, 'Chambre 4', 12, 1500);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1506, 'Salle de bain', 10, 1500);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (1507, 'Entrée', 4, 1500);

--maison deux etages--
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (910, 'Superficie', 347, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (911, 'Superficie maison', 156, 910);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9110, 'Rez de chaussée', 103, 911);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9111, 'Entree', 4, 9110);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9112, 'Cuisine', 15, 9110);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9113, 'Salle a manger', 12, 9110);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9114, 'Buanderie', 6, 9110);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9115, 'Salle de bain', 15, 9110);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9116, 'Salon', 30, 9110);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9117, 'Escalier', 4, 9110);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9118, 'Chambre', 15, 9110);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (91180, 'Dressing', 4, 9118);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9120, 'Etage', 72, 911);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9121, 'Chambre', 14, 9120);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (91210, 'Salle de bain', 5, 9121);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9122, 'Chambre', 14, 9120);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (91221, 'Salle de bain', 5, 9122);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9123, 'Chambre', 14, 9120);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (91230, 'Salle de bain', 5, 9123);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9124, 'Salle de bain', 6, 9120);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9125, 'Escalier', 4, 9120);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (912, 'Superficie jardin', 181, 910);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (913, 'Terrasse', 10, 910);

INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (920, 'Superficie', 200, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (921, 'Superficie maison', 100, 920);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9210, 'Rez de chaussée', 60, 921);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9211, 'Entree', 2, 9210);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9212, 'Cuisine', 10, 9210);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9213, 'Salle a manger', 8, 9210);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9214, 'Buanderie', 4, 9210);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9215, 'Salle de bain', 8, 9210);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9216, 'Salon', 18, 9210);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9217, 'Escalier', 2, 9210);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9218, 'Chambre', 8, 9210);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (92180, 'Dressing', 2, 9218);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9220, 'Etage', 40, 921);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9221, 'Chambre', 10, 9220);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (92210, 'Salle de bain', 3, 9221);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9222, 'Chambre', 10, 9220);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (92220, 'Salle de bain', 3, 9222);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9223, 'Chambre', 10, 9220);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (92230, 'Salle de bain', 3, 9223);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9224, 'Salle de bain', 4, 9220);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9225, 'Escalier', 2, 9220);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (922, 'Superficie jardin', 85, 920);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (923, 'Terrasse', 15, 920);

INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (930, 'Superficie', 180, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (931, 'Superficie maison', 90, 930);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9310, 'Rez de chaussée', 55, 931);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9311, 'Entree', 2, 9310);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9312, 'Cuisine', 9, 9310);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9313, 'Salle a manger', 7, 9310);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9314, 'Buanderie', 3, 9310);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9315, 'Salle de bain', 7, 9310);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9316, 'Salon', 17, 9310);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9317, 'Escalier', 2, 9310);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9318, 'Chambre', 8, 9310);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (93180, 'Dressing', 2, 9318);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9320, 'Etage', 35, 931);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9321, 'Chambre', 9, 9320);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (93210, 'Salle de bain', 3, 9321);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9322, 'Chambre', 9, 9320);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (93220, 'Salle de bain', 3, 9322);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9323, 'Chambre', 9, 9320);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (93230, 'Salle de bain', 3, 9323);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9324, 'Salle de bain', 4, 9320);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9325, 'Escalier', 2, 9320);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (932, 'Superficie jardin', 70, 930);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (933, 'Terrasse', 20, 910);

INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (945,'Superficie',160,NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (946,'Superficie maison',80,945);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9460,'Rez de chaussée',50,946);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9461,'Entree',2,9460);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9462,'Cuisine',8,9460);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9463,'Salle a manger',6,9460);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9464,'Buanderie',3,9460);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9465,'Salle de bain',6,9460);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9466,'Salon',15,9460);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9467,'Escalier',2,9460);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9468,'Chambre',8,9460);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (94680,'Dressing',2,9468);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9470,'Etage',30,946);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9471,'Chambre',9,9470);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (94710,'Salle de bain',3,9471);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9472,'Chambre',9,9470);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (94720,'Salle de bain',3,9472);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9473,'Chambre',9,9470);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (94730,'Salle de bain',3,9473);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9474,'Salle de bain',4,9470);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9475,'Escalier',2,9470);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (947,'superficie jardin',80,940);

INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (950, 'Superficie', 140, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (951, 'Superficie maison', 70, 950);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9510, 'Rez de chaussée', 45, 951);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9511, 'Entree', 2, 9510);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9512, 'Cuisine', 7, 9510);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9513, 'Salle a manger', 6, 9510);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9514, 'Buanderie', 3, 9510);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9515, 'Salle de bain', 6, 9510);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9516, 'Salon', 13, 9510);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9517, 'Escalier', 2, 9510);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9518, 'Chambre', 7, 9510);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (95180, 'Dressing', 2, 9518);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9520, 'Etage', 25, 950);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9521, 'Chambre', 8, 9520);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (95210, 'Salle de bain', 3, 9521);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9522, 'Chambre', 8, 9520);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (95220, 'Salle de bain', 3, 9522);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9523, 'Chambre', 8, 9520);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (95230, 'Salle de bain', 3, 9523);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9524, 'Salle de bain', 4, 9520);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (9525, 'Escalier', 2, 9520);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (952, 'Superficie jardin', 70, 950);

--maison 1 etage --
-- Maison 1
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2000, 'Superficie', 100, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2001, 'Rez de chaussee', 100, 2000);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2011, 'Entree', 4, 2001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2012, 'Cuisine', 15, 2001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2013, 'Salle a manger', 12, 2001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2014, 'Buanderie', 6, 2001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2015, 'Salle de bain', 8, 2001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2016, 'Salon', 25, 2001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2017, 'Chambre', 15, 2001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (20170, 'Dressing', 4, 2017);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2018, 'Chambre', 15, 2001);

-- Maison 2
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2100, 'Superficie', 90, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2101, 'Rez de chaussee', 90, 2100);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2111, 'Entree', 3, 2101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2112, 'Cuisine', 14, 2101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2113, 'Salle a manger', 11, 2101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2114, 'Buanderie', 5, 2101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2115, 'Salle de bain', 7, 2101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2116, 'Salon', 22, 2101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2117, 'Chambre', 14, 2101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (21170, 'Dressing', 3, 2117);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2118, 'Chambre', 14, 2101);


-- Maison 3
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2200, 'Superficie', 80, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2201, 'Rez de chaussee', 80, 2200);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2211, 'Entree', 3, 2201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2212, 'Cuisine', 12, 2201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2213, 'Salle a manger', 10, 2201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2214, 'Buanderie', 4, 2201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2215, 'Salle de bain', 6, 2201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2216, 'Salon', 20, 2201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2217, 'Chambre', 13, 2201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (22170, 'Dressing', 3, 2217);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2218, 'Chambre', 13, 2201);

-- Maison 4
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2300, 'Superficie', 70, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2301, 'Rez de chaussee', 70, 2300);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2311, 'Entree', 3, 2301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2312, 'Cuisine', 10, 2301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2313, 'Salle a manger', 9, 2301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2314, 'Buanderie', 4, 2301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2315, 'Salle de bain', 5, 2301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2316, 'Salon', 18, 2301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2317, 'Chambre', 12, 2301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (23170, 'Dressing', 3, 2317);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2318, 'Chambre', 12, 2301);

-- Maison 5
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2400, 'Superficie', 60, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2401, 'Rez de chaussee', 60, 2400);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2411, 'Entree', 2, 2401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2412, 'Cuisine', 9, 2401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2413, 'Salle a manger', 8, 2401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2414, 'Buanderie', 3, 2401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2415, 'Salle de bain', 5, 2401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2416, 'Salon', 15, 2401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2417, 'Chambre', 11, 2401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (24170, 'Dressing', 3, 2417);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2418, 'Chambre', 11, 2401);

-- Maison 6
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2500, 'Superficie', 110, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2501, 'Rez de chaussee', 110, 2500);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2511, 'Entrée', 4, 2501);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2512, 'Cuisine', 16, 2501);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2513, 'Salle a manger', 13, 2501);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2514, 'Buanderie', 7, 2501);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2515, 'Salle de bain', 9, 2501);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2516, 'Salon', 28, 2501);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2517, 'Chambre', 16, 2501);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (25170, 'Dressing', 5, 2517);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2518, 'Chambre', 16, 2501);

-- Maison 7
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2600, 'Superficie', 120, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2601, 'Rez de chaussee', 120, 2600);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2611, 'Entrée', 5, 2601);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2612, 'Cuisine', 18, 2601);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2613, 'Salle a manger', 15, 2601);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2614, 'Buanderie', 8, 2601);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2615, 'Salle de bain', 10, 2601);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2616, 'Salon', 30, 2601);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2617, 'Chambre', 17, 2601);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (26170, 'Dressing', 6, 2617);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2618, 'Chambre', 17, 2601);

-- Maison 8
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2700, 'Superficie', 95, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2701, 'Rez de chaussee', 95, 2700);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2711, 'Entrée', 4, 2701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2712, 'Cuisine', 15, 2701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2713, 'Salle a manger', 12, 2701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2714, 'Buanderie', 6, 2701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2715, 'Salle de bain', 8, 2701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2716, 'Salon', 25, 2701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2717, 'Chambre', 14, 2701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (27170, 'Dressing', 4, 2717);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2718, 'Chambre', 14, 2701);

-- Maison 9
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2800, 'Superficie', 85, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2801, 'Rez de chaussee', 85, 2800);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2811, 'Entree', 3, 2801);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2812, 'Cuisine', 13, 2801);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2813, 'Salle a manger', 11, 2801);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2814, 'Buanderie', 5, 2801);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2815, 'Salle de bain', 7, 2801);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2816, 'Salon', 22, 2801);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2817, 'Chambre', 13, 2801);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (28170, 'Dressing', 4, 2817);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2818, 'Chambre', 13, 2801);

-- Maison 10
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2900, 'Superficie', 105, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2901, 'Rez de chaussee', 105, 2900);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2911, 'Entree', 4, 2901);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2912, 'Cuisine', 17, 2901);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2913, 'Salle a manger', 14, 2901);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2914, 'Buanderie', 7, 2901);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2915, 'Salle de bain', 9, 2901);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2916, 'Salon', 26, 2901);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2917, 'Chambre', 15, 2901);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (29170, 'Dressing', 5, 2917);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (2918, 'Chambre', 15, 2901);

-- Maison 11
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3000, 'Superficie', 115, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3001, 'Rez de chaussee', 115, 3000);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3011, 'Entree', 5, 3001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3012, 'Cuisine', 19, 3001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3013, 'Salle a manger', 16, 3001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3014, 'Buanderie', 8, 3001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3015, 'Salle de bain', 10, 3001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3016, 'Salon', 28, 3001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3017, 'Chambre', 16, 3001);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (30170, 'Dressing', 6, 3017);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3018, 'Chambre', 16, 3001);


-- Maison 12
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3100, 'Superficie', 125, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3101, 'Rez de chaussee', 125, 3100);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3111, 'Entrée', 6, 3101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3112, 'Cuisine', 20, 3101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3113, 'Salle a manger', 17, 3101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3114, 'Buanderie', 9, 3101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3115, 'Salle de bain', 11, 3101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3116, 'Salon', 30, 3101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3117, 'Chambre', 18, 3101);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (31170, 'Dressing', 7, 3117);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3118, 'Chambre', 18, 3101);

-- Maison 13
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3200, 'Superficie', 100, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3201, 'Rez de chaussee', 100, 3200);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3211, 'Entree', 4, 3201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3212, 'Cuisine', 16, 3201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3213, 'Salle a manger', 13, 3201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3214, 'Buanderie', 7, 3201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3215, 'Salle de bain', 9, 3201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3216, 'Salon', 26, 3201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3217, 'Chambre', 15, 3201);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (32170, 'Dressing', 5, 3217);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3218, 'Chambre', 15, 3201);

-- Maison 14
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3300, 'Superficie', 95, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3301, 'Rez de chaussee', 95, 3300);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3311, 'Entree', 4, 3301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3312, 'Cuisine', 15, 3301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3313, 'Salle a manger', 12, 3301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3314, 'Buanderie', 6, 3301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3315, 'Salle de bain', 8, 3301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3316, 'Salon', 25, 3301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3317, 'Chambre', 14, 3301);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (33170, 'Dressing', 4, 3317);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3318, 'Chambre', 14, 3301);

-- Maison 15
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3400, 'Superficie', 85, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3401, 'Rez de chaussee', 85, 3400);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3411, 'Entree', 3, 3401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3412, 'Cuisine', 13, 3401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3413, 'Salle a manger', 11, 3401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3414, 'Buanderie', 5, 3401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3415, 'Salle de bain', 7, 3401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3416, 'Salon', 22, 3401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3417, 'Chambre', 13, 3401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (34170, 'Dressing', 4, 3417);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3418, 'Chambre', 13, 3401);

-- Maison 16
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3500, 'Superficie', 85, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (5401, 'Rez de chaussee', 85, 3500);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3511, 'Entree', 3, 5401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3512, 'Cuisine', 13, 5401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3513, 'Salle a manger', 11, 5401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3514, 'Buanderie', 5, 5401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3515, 'Salle de bain', 7, 5401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3516, 'Salon', 22, 5401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3517, 'Chambre', 13, 5401);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (36170, 'Dressing', 4, 3517);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3518, 'Chambre', 13, 5401);

-- Maison 17
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3700, 'Superficie', 85, NULL);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3701, 'Rez de chaussee', 85, 3700);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3711, 'Entree', 3, 3701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3712, 'Cuisine', 13, 3701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3713, 'Salle a manger', 11, 3701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3714, 'Buanderie', 5, 3701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3715, 'Salle de bain', 7, 3701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3716, 'Salon', 22, 3701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3717, 'Chambre', 13, 3701);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (37170, 'Dressing', 4, 3717);
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (3718, 'Chambre', 13, 3701);



INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (1000, 'Appartement', 'Studio', 240, 'Aix-en-Provence', 170000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (1100, 'Appartement', 'Studio', 240, 'Aix-en-Provence', 200000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (1200, 'Appartement', 'T2', 240, 'Aix-en-Provence', 270000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (1300, 'Appartement', 'T3', 240, 'Monaco', 500000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (1400, 'Appartement', 'T4', 240, 'Aix-en-Provence', 350000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (1500, 'Appartement', 'T5', 220, 'Paris', 600000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (900, 'Appartement', 'Studio', 10, 'Marseille', 180000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (910, 'Maison de campagne', 'T5', 220, 'Bordeaux', 550000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (920, 'Maison de campagne', 'T6 et plus', 30, 'Lyon', 600000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (930, 'Villa', 'T6 et plus', 40, 'Nice', 800000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (945, 'Maison de campagne', 'T4', 105, 'Toulouse', 450000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (950, 'Maison de campagne', 'T4', 106, 'Lille', 400000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (2000, 'Maison de ville', 'T3', 105, 'Paris', 500000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (2100, 'Maison de ville', 'T3', 160, 'Lyon', 400000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (2200, 'Maison de ville', 'T4', 170, 'Marseille', 450000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (2300, 'Maison de campagne', 'T5', 180, 'Bordeaux', 500000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (2400, 'Maison de ville', 'T5', 190, 'Nice', 650000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (2500, 'Maison de ville', 'T3', 70, 'Paris', 600000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (2600, 'Maison de ville', 'T5', 80, 'Paris', 700000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (2700, 'Maison de ville', 'T5', 90, 'Paris', 650000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (2800, 'Maison de ville', 'T4', 100, 'Paris', 680000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (2900, 'Villa', 'T6 et plus', 110, 'Biarritz', 900000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (3000, 'Maison de campagne', 'T6 et plus', 120, 'Toulouse', 700000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (3100, 'Maison de ville', 'T4', 130, 'Paris', 750000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (3200, 'Maison de ville', 'T5', 140, 'Paris', 800000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (3300, 'Maison de campagne', 'T6 et plus', 150, 'Lille', 650000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (3400, 'Maison de ville', 'T5', 160, 'Paris', 850000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (3500, 'Maison de ville', 'T5', 90, 'Paris', 850000);
INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES (3700, 'Maison de ville', 'T5', 100, 'Paris', 850000);
