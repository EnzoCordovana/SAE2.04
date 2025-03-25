
INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES (
(900,'Superficie',50,NULL)
    (901,'Salon Cuisine',22,900)
    (902,'Chambre 1',10.5,900)
    (903,'Chambre 2',8.5,900)
    (904,'Salle de bain',2.5,900)

(910,'Superficie',337,NULL)
    (911,'Superficie maison',156,910)
        (9110,'Rez de chaussée',103,911)
            (9111,'Entree',4,9110)
            (9112,'Cuisine',15,9110)
            (9113,'Salle a manger',12,9110)
            (9114,'Buanderie',6,9110)
            (9115,'salle de bain 1',15,9110)
            (9116,'Salon',30,9110)
            (9117,'Escalier',4,9110)
            (9118,'Chambre 1',15,9110)
                (91180,'Dressing',4,9118)
        (9120,'Etage',72,911) 
            (9121,'Chambre 2',14,9120)
                (91210,'Salle de bain 2',5,9121)
            (9122,'Chambre 3',14,9120)
                (91221,'Salle de bain 3',5,9122)
            (9123,'Chambre 4',14,9120)
                (91230,'Salle de bain 4',5,9123)
            (9124,'Salle de bain 5',6,9120)
            (9125,'Escalier',4,9120)
            

(920,'Superficie',200,NULL),
    (921,'Superficie maison',100,920),
        (9210,'Rez de chaussée',60,921),
            (9211,'Entree',2,9210),
            (9212,'Cuisine',10,9210),
            (9213,'Salle a manger',8,9210),
            (9214,'Buanderie',4,9210),
            (9215,'Salle de bain 1',8,9210),
            (9216,'Salon',18,9210),
            (9217,'Escalier',2,9210),
            (9218,'Chambre 1',8,9210),
                (92180,'Dressing',2,9218),
        (9220,'Etage',40,921),
            (9221,'Chambre 2',10,9220),
                (92210,'Salle de bain 2',3,9221),
            (9222,'Chambre 3',10,9220),
                (92220,'Salle de bain 3',3,9222),
            (9223,'Chambre 4',10,9220),
                (92230,'Salle de bain 4',3,9223),
            (9224,'Salle de bain 5',4,9220),
            (9225,'Escalier',2,9220);

(930,'Superficie',180,NULL),
    (931,'Superficie maison',90,930),
        (9310,'Rez de chaussée',55,931),
            (9311,'Entree',2,9310),
            (9312,'Cuisine',9,9310),
            (9313,'Salle a manger',7,9310),
            (9314,'Buanderie',3,9310),
            (9315,'Salle de bain 1',7,9310),
            (9316,'Salon',17,9310),
            (9317,'Escalier',2,9310),
            (9318,'Chambre 1',8,9310),
                (93180,'Dressing',2,9318),
        (9320,'Etage',35,931),
            (9321,'Chambre 2',9,9320),
                (93210,'Salle de bain 2',3,9321),
            (9322,'Chambre 3',9,9320),
                (93220,'Salle de bain 3',3,9322),
            (9323,'Chambre 4',9,9320),
                (93230,'Salle de bain 4',3,9323),
            (9324,'Salle de bain 5',4,9320),
            (9325,'Escalier',2,9320);

(940,'Superficie',160,NULL),
    (941,'Superficie maison',80,940),
        (9410,'Rez de chaussée',50,941),
            (9411,'Entree',2,9410),
            (9412,'Cuisine',8,9410),
            (9413,'Salle a manger',6,9410),
            (9414,'Buanderie',3,9410),
            (9415,'Salle de bain 1',6,9410),
            (9416,'Salon',15,9410),
            (9417,'Escalier',2,9410),
            (9418,'Chambre 1',8,9410),
                (94180,'Dressing',2,9418),
        (9420,'Etage',30,941),
            (9421,'Chambre 2',9,9420),
                (94210,'Salle de bain 2',3,9421),
            (9422,'Chambre 3',9,9420),
                (94220,'Salle de bain 3',3,9422),
            (9423,'Chambre 4',9,9420),
                (94230,'Salle de bain 4',3,9423),
            (9424,'Salle de bain 5',4,9420),
            (9425,'Escalier',2,9420);

(950,'Superficie',140,NULL),
    (951,'Superficie maison',70,950),
        (9510,'Rez de chaussée',45,951),
            (9511,'Entree',2,9510),
            (9511,'Cuisine',7,9510),
            (9513,'Salle a manger',6,9510),
            (9514,'Buanderie',3,9510),
            (9515,'Salle de bain 1',6,9510),
            (9516,'Salon',13,9510),
            (9517,'Escalier',2,9510),
            (9518,'Chambre 1',7,9510),
                (95180,'Dressing',2,9518),
        (9520,'Etage',25,950),
            (9521,'Chambre 2',8,9520),
                (95210,'Salle de bain 2',3,9521),
            (9522,'Chambre 3',8,9520),
                (95220,'Salle de bain 3',3,9522),
            (9523,'Chambre 4',8,9520),
                (95230,'Salle de bain 4',3,9523),
            (9524,'Salle de bain 5',4,9520),
            (9525,'Escalier',2,9520);

--maison 1 etage --
-- Maison 1
(2000,'Superficie',100,NULL),
    (2001,'Rez de chaussée',100,2000),
        (2011,'Entree',4,2001),
        (2012,'Cuisine',15,2001),
        (2013,'Salle a manger',12,2001),
        (2014,'Buanderie',6,2001),
        (2015,'Salle de bain 1',8,2001),
        (2016,'Salon',25,2001),
        (2017,'Chambre 1',15,2001),
            (20170,'Dressing',4,2017),
        (2018,'Chambre 2',15,2001);


-- Maison 2
(2100,'Superficie',90,NULL),
    (2101,'Rez de chaussée',90,2100),
        (2111,'Entree',3,2101),
        (2112,'Cuisine',14,2101),
        (2113,'Salle a manger',11,2101),
        (2114,'Buanderie',5,2101),
        (2115,'Salle de bain 1',7,2101),
        (2116,'Salon',22,2101),
        (2117,'Chambre 1',14,2101),
            (21170,'Dressing',3,2117),
        (2118,'Chambre 2',14,2101);


-- Maison 3
(2200,'Superficie',80,NULL),
    (2201,'Rez de chaussée',80,2200),
        (2211,'Entree',3,2201),
        (2212,'Cuisine',12,2201),
        (2213,'Salle a manger',10,2201),
        (2214,'Buanderie',4,2201),
        (2215,'Salle de bain 1',6,2201),
        (2216,'Salon',20,2201),
        (2217,'Chambre 1',13,2201),
            (22170,'Dressing',3,2217),
        (2218,'Chambre 2',13,2201);


-- Maison 4
(2300,'Superficie',70,NULL),
    (2301,'Rez de chaussée',70,2300),
        (2311,'Entree',3,2301),
        (2312,'Cuisine',10,2301),
        (2313,'Salle a manger',9,2301),
        (2314,'Buanderie',4,2301),
        (2315,'Salle de bain 1',5,2301),
        (2316,'Salon',18,2301),
        (2317,'Chambre 1',12,2301),
            (23170,'Dressing',3,2317),
        (2318,'Chambre 2',12,2301);


-- Maison 5
(2400,'Superficie',60,NULL),
    (2401,'Rez de chaussée',60,2400),
        (2411,'Entree',2,2401),
        (2412,'Cuisine',9,2401),
        (2413,'Salle a manger',8,2401),
        (2414,'Buanderie',3,2401),
        (2415,'Salle de bain 1',5,2401),
        (2416,'Salon',15,2401),
        (2417,'Chambre 1',11,2401),
            (24170,'Dressing',3,2417),
        (2418,'Chambre 2',11,2401);



INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES
(900,'Appartement','Studio',01,'Marseille',161350)
(910,'Maison','Villa',02,'Bordeaux',698000)
(920,'Maison','Villa',03,'Lyon',450000);
(930,'Maison','Villa',04,'Nice',420000);
(940,'Maison','Villa',05,'Toulouse',400000);
(950,'Maison','Villa',06,'Lille',380000);

(2000,'Maison','Plain-pied',15,'Paris',350000);
(2100,'Maison','Plain-pied',16,'Lyon',320000);
(2200,'Maison','Plain-pied',17,'Marseille',300000);
(2300,'Maison','Plain-pied',18,'Bordeaux',280000);
(2400,'Maison','Plain-pied',19,'Nice',260000);


