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
(1400,'Superficie',120,NULL),
    (1401,'Superficie maison',60,1400),
        (1410,'Rez de chaussée',40,1401),
            (1411,'Entree',2,1410),
            (1412,'Cuisine',6,1410),
            (1413,'Salle a manger',5,1410),
            (1414,'Buanderie',2,1410),
            (1415,'Salle de bain 1',5,1410),
            (1416,'Salon',12,1410),
            (1417,'Escalier',2,1410),
            (1418,'Chambre 1',6,1410),
                (14180,'Dressing',2,1418),
        (1420,'Etage',20,1401),
            (1421,'Chambre 2',7,1420),
                (14210,'Salle de bain 2',3,1421),
            (1422,'Chambre 3',7,1420),
                (14221,'Salle de bain 3',3,1422),
            (1423,'Chambre 4',7,1420),
                (14230,'Salle de bain 4',3,1423),
            (1424,'Salle de bain 5',4,1420),
            (1425,'Escalier',2,1420);

(1500,'Superficie',100,NULL),
    (1501,'Superficie maison',50,1500),
        (1510,'Rez de chaussée',35,1501),
            (1511,'Entree',2,1510),
            (1512,'Cuisine',5,1510),
            (1513,'Salle a manger',5,1510),
            (1514,'Buanderie',2,1510),
            (1515,'Salle de bain 1',5,1510),
            (1516,'Salon',10,1510),
            (1517,'Escalier',2,1510),
            (1518,'Chambre 1',6,1510),
                (15180,'Dressing',2,1518),
        (1520,'Etage',15,1501),
            (1521,'Chambre 2',6,1520),
                (15210,'Salle de bain 2',3,1521),
            (1522,'Chambre 3',6,1520),
                (15221,'Salle de bain 3',3,1522),
            (1523,'Chambre 4',6,1520),
                (15230,'Salle de bain 4',3,1523),
            (1524,'Salle de bain 5',4,1520),
            (1525,'Escalier',2,1520);

(1600,'Superficie',80,NULL),
    (1601,'Superficie maison',40,1600),
        (1610,'Rez de chaussée',30,1601),
            (1611,'Entree',2,1610),
            (1612,'Cuisine',5,1610),
            (1613,'Salle a manger',4,1610),
            (1614,'Buanderie',2,1610),
            (1615,'Salle de bain 1',4,1610),
            (1616,'Salon',8,1610),
            (1617,'Escalier',2,1610),
            (1618,'Chambre 1',5,1610),
                (16180,'Dressing',2,1618),
        (1620,'Etage',10,1601),
            (1621,'Chambre 2',5,1620),
                (16210,'Salle de bain 2',3,1621),
            (1622,'Chambre 3',5,1620),
                (16221,'Salle de bain 3',3,1622),
            (1623,'Chambre 4',5,1620),
                (16230,'Salle de bain 4',3,1623),
            (1624,'Salle de bain 5',4,1620),
            (1625,'Escalier',2,1620);

(1700,'Superficie',60,NULL),
    (1701,'Superficie maison',30,1700),
        (1710,'Rez de chaussée',25,1701),
            (1711,'Entree',2,1710),
            (1712,'Cuisine',4,1710),
            (1713,'Salle a manger',4,1710),
            (1714,'Buanderie',2,1710),
            (1715,'Salle de bain 1',4,1710),
            (1716,'Salon',7,1710),
            (1717,'Escalier',2,1710),
            (1718,'Chambre 1',5,1710),
                (17180,'Dressing',2,1718),
        (1720,'Etage',5,1701),
            (1721,'Chambre 2',4,1720),
                (17210,'Salle de bain 2',2,1721),
            (1722,'Chambre 3',4,1720),
                (17221,'Salle de bain 3',2,1722),
            (1723,'Chambre 4',4,1720),
                (17230,'Salle de bain 4',2,1723),
            (1724,'Salle de bain 5',3,1720),
            (1725,'Escalier',2,1720);

(1800,'Superficie',50,NULL),
    (1801,'Superficie maison',25,1800),
        (1810,'Rez de chaussée',20,1801),
            (1811,'Entree',2,1810),
            (1812,'Cuisine',4,1810),
            (1813,'Salle a manger',3,1810),
            (1814,'Buanderie',2,1810),
            (1815,'Salle de bain 1',3,1810),
            (1816,'Salon',6,1810),
            (1817,'Escalier',2,1810),
            (1818,'Chambre 1',4,1810),
                (18180,'Dressing',2,1818),
        (1820,'Etage',5,1801),
            (1821,'Chambre 2',4,1820),
                (18210,'Salle de bain 2',2,1821),
            (1822,'Chambre 3',4,1820),
                (18221,'Salle de bain 3',2,1822),
            (1823,'Chambre 4',4,1820),
                (18230,'Salle de bain 4',2,1823),
            (1824,'Salle de bain 5',3,1820),
            (1825,'Escalier',2,1820);

(1900,'Superficie',40,NULL),
    (1901,'Superficie maison',20,1900),
        (1910,'Rez de chaussée',15,1901),
            (1911,'Entree',2,1910),
            (1912,'Cuisine',3,1910),
            (1913,'Salle a manger',3,1910),
            (1914,'Buanderie',2,1910),
            (1915,'Salle de bain 1',3,1910),
            (1916,'Salon',5,1910),
            (1917,'Escalier',2,1910),
            (1918,'Chambre 1',4,1910),
                (19180,'Dressing',2,1918),
        (1920,'Etage',5,1901),
            (1921,'Chambre 2',3,1920),
                (19210,'Salle de bain 2',2,1921),
            (1922,'Chambre 3',3,1920),
                (19221,'Salle de bain 3',2,1922),
            (1923,'Chambre 4',3,1920),
                (19230,'Salle de bain 4',2,1923),
            (1924,'Salle de bain 5',3,1920),
            (1925,'Escalier',2,1920)
);

INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES
(900,'Appartement','Studio',01,'Marseille',161350)
(910,'Maison','Villa',02,'Bordeaux',698000)
(920,'Maison','Villa',03,'Lyon',450000);
(930,'Maison','Villa',04,'Nice',420000);
(940,'Maison','Villa',05,'Toulouse',400000);
(950,'Maison','Villa',06,'Lille',380000);
(960,'Maison','Villa',07,'Strasbourg',360000);
(970,'Maison','Villa',08,'Nantes',340000);
(980,'Maison','Villa',09,'Montpellier',320000);
(990,'Maison','Villa',10,'Rennes',300000);
(1000,'Maison','Villa',11,'Grenoble',280000);
(1010,'Maison','Villa',12,'Reims',260000);


